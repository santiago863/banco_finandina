import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../common/constants/image_constants.dart';
import '../../../theme/theme_texts.dart';

PageViewModel introductionElementFirst(BuildContext context) {
  return PageViewModel(
    body: '',
    titleWidget: SizedBox(
      height: MediaQuery.of(context).size.height * .7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  AppImages.logo,
                  height: 100,
                  width: 100,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Con',
                      style: AppText.subtitle,
                    ),
                    TextSpan(
                      text: ' Banco Finandina ',
                      style: AppText.subtitle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'tienes el poder de ser libre',
                style: AppText.subtitle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Descubre lo que puedes hacer con tu',
                style: AppText.text,
                textAlign: TextAlign.center,
              ),
              Text(
                'App Banco Finandina',
                style: AppText.title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
