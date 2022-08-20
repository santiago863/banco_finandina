import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../common/constants/image_constants.dart';
import '../../../theme/theme_texts.dart';

PageViewModel introductionElement({
  required String imageItem,
  required String title,
  required String text,
}) {
  return PageViewModel(
    decoration: const PageDecoration(
      titlePadding: EdgeInsets.all(0),
      contentMargin: EdgeInsets.all(0),
    ),
    titleWidget: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 30),
          child: Image.asset(
            AppImages.logo,
            height: 40,
            width: 40,
          ),
        ),
        Image.asset(
          imageItem,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              Text(
                title,
                style: AppText.title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                text,
                style: AppText.text,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    ),
    body: '',
  );
}
