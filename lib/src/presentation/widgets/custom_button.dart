import 'package:bagatimes/src/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool negativeColors;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.negativeColors = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
