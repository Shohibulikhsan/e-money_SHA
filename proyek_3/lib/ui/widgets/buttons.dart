import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    super.key,
    required this.title,
    this.height = 50,
    this.width = double.infinity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(100, 12, 0, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {

	final String title;
  final double height;
  final double width;
  final VoidCallback? onPressed;

  const CustomTextWidget({
    super.key,
		required this.title,
    this.height = 24,
    this.width = double.infinity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: width,
            height: height,
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Text(
                title,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          );
  }
}
