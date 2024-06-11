import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class GoogleReviews extends StatefulWidget {
  const GoogleReviews({super.key});

  @override
  State<GoogleReviews> createState() => _GoogleReviewsState();
}

class _GoogleReviewsState extends State<GoogleReviews> {
  final String placeId =
      'ChIJPxtyhQfL2JQR1hlJuJeaalc'; // Replace with your place ID

  final String cloudFunctionUrl =
      'https://us-central1-bagatimes.cloudfunctions.net/getReviews';

  final client = Client();

  Future<List<dynamic>> fetchReviews() async {
    final response =
        await client.get(Uri.parse('$cloudFunctionUrl?placeId=$placeId'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['result']['reviews'];
    } else {
      throw Exception('Failed to load reviews');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchReviews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No reviews found'));
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final review = snapshot.data![index];
              return ListTile(
                title: Text(review['author_name']),
                subtitle: Text(review['text']),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (i) {
                    return Icon(
                      i < review['rating'] ? Icons.star : Icons.star_border,
                    );
                  }),
                ),
              );
            },
          );
        }
      },
    );
  }
}
