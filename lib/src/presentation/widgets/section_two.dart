import 'package:bagatimes/src/presentation/widgets/custom_button.dart';
import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:bagatimes/src/utils/colors.dart';
import 'package:bagatimes/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    if (SizerUtil.width > 900) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, AppColors.secondary],
            stops: const [0.5, 0.5], // This makes the gradient split equally
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: SectionComponent(
          innerPadding: paddingWeb80,
          color: Colors.transparent,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                height: 500,
                constraints: const BoxConstraints(
                  maxWidth: 1200,
                ),
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(70, 40, 70, 40),
                        constraints: const BoxConstraints(
                          minHeight: 500,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                          ),
                          color: AppColors.darkGrey,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Como funciona',
                              style: TextStyle(
                                height: 0,
                                color: Colors.white,
                                fontSize: fsWeb48,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const Gap(20),
                            Text(
                              'A defesa contra suspensão da CNH é crucial para quem não pode ficar sem dirigir. Com uma boa defesa elaborada por advogados experientes, você pode evitar a suspensão da sua carteira de motorista e continuar dirigindo normalmente durante o processo.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: fsWeb18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        child: Image.asset(
                          'images/cars.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(45),
              const CustomButton(
                text: 'QUERO UM ORÇAMENTO',
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, AppColors.secondary],
          stops: const [0.5, 0.5], // This makes the gradient split equally
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: SectionComponent(
        innerPadding: paddingWeb80,
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: AppColors.darkGrey,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Como funciona',
                            style: TextStyle(
                              height: 0,
                              color: Colors.white,
                              fontSize: fsWeb48,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Gap(20),
                          Text(
                            'A defesa contra suspensão da CNH é crucial para quem não pode ficar sem dirigir. Com uma boa defesa elaborada por advogados experientes, você pode evitar a suspensão da sua carteira de motorista e continuar dirigindo normalmente durante o processo.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: fsWeb18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      child: Image.asset(
                        'images/cars.png',
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(45),
            const CustomButton(
              text: 'QUERO UM ORÇAMENTO',
            ),
          ],
        ),
      ),
    );
  }
}
