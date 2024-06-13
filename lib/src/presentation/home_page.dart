import 'package:bagatimes/src/presentation/widgets/section_five.dart';
import 'package:bagatimes/src/presentation/widgets/section_four.dart';
import 'package:bagatimes/src/presentation/widgets/section_one.dart';
import 'package:bagatimes/src/presentation/widgets/section_six.dart';
import 'package:bagatimes/src/presentation/widgets/section_three.dart';
import 'package:bagatimes/src/presentation/widgets/section_two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SectionOne(),
                SectionTwo(),
                SectionThree(),
                SectionFour(),
                SectionFive(),
                SectionSix(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
