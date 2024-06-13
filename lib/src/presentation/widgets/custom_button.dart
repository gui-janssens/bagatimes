import 'package:bagatimes/src/utils/colors.dart';
import 'package:bagatimes/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool negativeColors;
  const CustomButton({
    super.key,
    required this.text,
    this.negativeColors = false,
  });

  Future<void> _launchWhatsApp() async {
    final uri = Uri.parse(
        'https://wa.me/+554799262830?text=${Uri.encodeComponent('Quero um orçamento para defender meu direito de dirigir')}');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchWhatsApp,
      style: ElevatedButton.styleFrom(
        backgroundColor: negativeColors ? Colors.white : AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(190, 72),
        elevation: 2, // Adjust elevation to control the size of the shadow
      ).copyWith(
          overlayColor:
              MaterialStateProperty.all(Colors.black.withOpacity(.1))),
      child: Text(
        text,
        style: TextStyle(
          color: negativeColors ? AppColors.secondary : Colors.white,
          fontSize: fsWeb18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
