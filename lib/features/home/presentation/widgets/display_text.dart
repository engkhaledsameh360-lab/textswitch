import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class DisplayText extends StatelessWidget {
  final String text;

  const DisplayText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Text(
        text,
        key: ValueKey<String>(text),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}
