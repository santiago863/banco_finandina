import 'package:banco_finandina/presentation/theme/theme_texts.dart';
import 'package:flutter/material.dart';
import '../theme/theme_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color colorBackground;
  final Color colorOverlay;
  final bool enable;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.colorBackground = AppColor.white,
    this.colorOverlay = AppColor.primary,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: TextButton(
        onPressed: () => enable ? onTap() : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            enable ? colorBackground : AppColor.whiteTransparent,
          ),
          overlayColor: MaterialStateProperty.all(
            enable ? colorOverlay : AppColor.whiteTransparent,
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              vertical: 15,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        child: Text(
          text,
          style: AppText.text.copyWith(
            color: AppColor.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
