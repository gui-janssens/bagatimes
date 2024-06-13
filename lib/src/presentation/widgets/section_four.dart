import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart'; // Add this import for date formatting

class SectionFour extends StatefulWidget {
  const SectionFour({super.key});

  @override
  State<SectionFour> createState() => _SectionFourState();
}

class _SectionFourState extends State<SectionFour> {
  final String placeId =
      'ChIJPxtyhQfL2JQR1hlJuJeaalc'; // Replace with your place ID

  final String cloudFunctionUrl =
      'https://us-central1-bagatimes.cloudfunctions.net/getReviews';

  final client = Client();
  final ScrollController _scrollController = ScrollController();
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

  void _scrollLeft() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.offset - 300, // Adjust the offset as needed
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollRight() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.offset + 300, // Adjust the offset as needed
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  bool get allFiveCardsFit {
    const cardWith = 300;
    const totalMarginLeft = 4 * 7.5;
    const totalMarginRight = 4 * 7.5;
    var totalWidth = cardWith * 5 + totalMarginLeft + totalMarginRight;
    totalWidth += 20;
    if (MediaQuery.of(context).size.width > totalWidth) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchReviews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(50),
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                      Colors.blue), // Use your primary color
                ),
              ),
            ),
          );
        } else if (snapshot.hasError ||
            !snapshot.hasData ||
            snapshot.data!.isEmpty) {
          return const Center();
        } else {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: Row(
              children: [
                if (!allFiveCardsFit)
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: _scrollLeft,
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      itemBuilder: (context, index) {
                        final review = snapshot.data![index];

                        final DateTime date =
                            DateTime.fromMillisecondsSinceEpoch(review['time']);
                        final formattedDate =
                            DateFormat('dd/MM/yyyy').format(date);
                        return Container(
                          width: 300, // Fixed width
                          margin: EdgeInsets.fromLTRB(
                            index == 0 ? 0 : 7.5,
                            15,
                            index == snapshot.data!.length - 1 ? 0 : 7.5,
                            15,
                          ),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: IntrinsicHeight(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      NetworkImage(review['profile_photo_url']),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  review['author_name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  formattedDate,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: List.generate(5, (i) {
                                    return Icon(
                                      i < review['rating']
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Colors.amber,
                                    );
                                  }),
                                ),
                                const SizedBox(height: 8),
                                Flexible(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      review['text'],
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                if (!allFiveCardsFit)
                  Container(
                    padding: const EdgeInsets.only(left: 0, right: 10),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: _scrollRight,
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        }
      },
    );
  }
}
