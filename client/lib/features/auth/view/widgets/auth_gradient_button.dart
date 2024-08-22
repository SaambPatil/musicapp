import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [
        //     Pallete.gradient2,
        //     Pallete.gradient3,
        //   ],
        //   begin: Alignment.bottomLeft,
        //   end: Alignment.topRight,
        // ),
        color: Pallete.gradient3,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Pallete.transparentColor,
          shadowColor: Pallete.transparentColor,
        ),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Pallete.backgroundColor),
        ),
      ),
    );
  }
}
