import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:bagatimes/src/utils/colors.dart';
import 'package:bagatimes/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class SectionSeven extends StatelessWidget {
  const SectionSeven({super.key});

  @override
  Widget build(BuildContext context) {
    if (SizerUtil.width > 900) {
      return SectionComponent(
        innerPadding: 35,
        color: AppColors.darkGrey,
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 1200,
              maxHeight: 200,
              minHeight: 200,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Center(
                    child: Image.asset(
                      'images/logo_no_bg.png',
                      height: 200,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BAGATIM E SEDREZ SOCIEDADE DE ADVOGADOS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fsWeb18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'OAB/SC 7293',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fsWeb18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        'Av. Sete de Setembro, 1377, sala 20',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fsWeb18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Fazenda, Itajaí/SC CEP: 88301-205',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fsWeb18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        '(47) 9 9926-2830',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fsWeb18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        'contato@bagatimesedrez.com.br',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fsWeb18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return SectionComponent(
      innerPadding: 20,
      color: AppColors.darkGrey,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'images/logo_no_bg.png',
                height: 150,
                fit: BoxFit.fitHeight,
              ),
            ),
            const Gap(30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BAGATIM E SEDREZ SOCIEDADE DE ADVOGADOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fsWeb18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'OAB/SC 7293',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fsWeb18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(10),
                Text(
                  'Av. Sete de Setembro, 1377, sala 20',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fsWeb18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Fazenda, Itajaí/SC CEP: 88301-205',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fsWeb18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(10),
                Text(
                  '(47) 9 9926-2830',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fsWeb18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(10),
                Text(
                  'contato@bagatimesedrez.com.br',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fsWeb18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(25),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
