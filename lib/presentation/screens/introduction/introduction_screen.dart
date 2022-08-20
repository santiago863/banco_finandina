import 'package:banco_finandina/common/constants/image_constants.dart';
import 'package:banco_finandina/presentation/screens/introduction/widgets/introduction_element.dart';
import 'package:banco_finandina/presentation/screens/introduction/widgets/introduction_element_first.dart';
import 'package:banco_finandina/presentation/theme/theme_texts.dart';
import 'package:banco_finandina/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../theme/theme_colors.dart';

class IntroductionsScreen extends StatefulWidget {
  const IntroductionsScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionsScreen> createState() => _IntroductionsScreenState();
}

class _IntroductionsScreenState extends State<IntroductionsScreen> {
  late String backgroundImage;
  late bool isLast;

  @override
  void initState() {
    super.initState();
    backgroundImage = AppImages.introductionBackground1;
    isLast = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.primary,
        image: DecorationImage(
          image: AssetImage(
            backgroundImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: IntroductionScreen(
        pages: [
          introductionElementFirst(context),
          introductionElement(
            imageItem: AppImages.introductionItem2,
            title: 'Tus productos a la mano',
            text:
                'Adminístralos libremente desde cualquier lugar, fácil y rápido.',
          ),
          introductionElement(
            imageItem: AppImages.introductionItem3,
            title: 'Paga libremente',
            text:
                'Puedes pagar tus productos, recibos y facturas en cualquier momento y lugar.',
          ),
          introductionElement(
            imageItem: AppImages.introductionItem4,
            title: 'Envía dinero',
            text:
                'Pasa plata libremente y sin costo a cualquier cuenta bancaria o celular en Colombia.',
          ),
          introductionElement(
            imageItem: AppImages.introductionItem5,
            title: 'Tu banco donde quieras',
            text:
                'La oficina más cercana es tu celular. Libérate de las filas y los trámites largos.',
          ),
          introductionElement(
            imageItem: AppImages.introductionItem6,
            title: '¡Escanea y listo!',
            text:
                'Paga en datáfonos con QR y libérate de las tarjetas físicas.',
          ),
        ],
        dotsContainerDecorator: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isLast ? AppColor.transparent : AppColor.whiteTransparent,
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(
            8.0,
          ),
          activeSize: const Size(
            15.0,
            8.0,
          ),
          activeColor: isLast ? AppColor.transparent : AppColor.white,
          color: isLast ? AppColor.transparent : AppColor.grey,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        globalBackgroundColor: AppColor.transparent,
        globalFooter: isLast
            ? ButtonWidget(
                text: 'Libera tu banca',
                onTap: () {},
              )
            : null,
        showDoneButton: false,
        showBackButton: false,
        showSkipButton: true,
        showNextButton: true,
        skip: Text(
          'Saltar',
          style: AppText.text,
        ),
        next: const CircleAvatar(
          backgroundColor: AppColor.white,
          radius: 25,
          child: Icon(
            Icons.arrow_forward,
            color: AppColor.primary,
            size: 25,
          ),
        ),
        controlsMargin: const EdgeInsets.all(30),
        controlsPadding: const EdgeInsets.all(0),
        onChange: (value) {
          switch (value) {
            case 0:
              backgroundImage = AppImages.introductionBackground1;
              isLast = false;
              break;
            case 1:
              backgroundImage = AppImages.introductionBackground2;
              isLast = false;
              break;
            case 2:
              backgroundImage = AppImages.introductionBackground3;
              isLast = false;
              break;
            case 3:
              backgroundImage = AppImages.introductionBackground4;
              isLast = false;
              break;
            case 4:
              backgroundImage = AppImages.introductionBackground5;
              isLast = false;
              break;
            case 5:
              backgroundImage = AppImages.introductionBackground6;
              isLast = true;
              break;
          }
          setState(() {});
        },
      ),
    );
  }
}
