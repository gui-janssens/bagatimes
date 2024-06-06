import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class GoogleReviews extends StatefulWidget {
  const GoogleReviews({super.key});

  @override
  State<GoogleReviews> createState() => _GoogleReviewsState();
}

class _GoogleReviewsState extends State<GoogleReviews> {
  final String apiKey =
      'AIzaSyDtLFeS4uf2FNy40aN-dJGgB3gnxYMzmAw'; // Replace with your API key
  final String placeId =
      'ChIJPxtyhQfL2JQR1hlJuJeaalc'; // Replace with your place ID
  final client = Client();

  static Uri _buildUri(String authority, String unencondedPath,
      [Map<String, String>? queryParameters]) {
    if (authority.contains('3333')) {
      return Uri.http(
        authority,
        unencondedPath,
        queryParameters,
      );
    }
    return Uri.https(
      authority,
      unencondedPath,
      queryParameters,
    );
  }

  Future<List<dynamic>> fetchReviews() async {
    const String corsProxy = 'https://cors-anywhere.herokuapp.com/';
    final String url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=reviews&key=$apiKey';

    final response = await client.get(Uri.parse('$corsProxy$url'));

    print(response.statusCode);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);
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
