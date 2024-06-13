import 'package:bagatimes/src/presentation/widgets/custom_button.dart';
import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:bagatimes/src/utils/colors.dart';
import 'package:bagatimes/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class SectionSix extends StatelessWidget {
  const SectionSix({super.key});

  @override
  Widget build(BuildContext context) {
    if (SizerUtil.width > 900) {
      return SectionComponent(
        innerPadding: 0,
        color: Colors.blue,
        child: SizedBox(
          height: 650,
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  'images/partners.png',
                  fit: BoxFit.cover,
                  height: 650,
                ),
              ),
              Expanded(
                child: Container(
                  color: AppColors.darkGrey,
                  padding: const EdgeInsets.all(80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Quem somos',
                        style: TextStyle(
                          fontSize: fsWeb48,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            width: 640,
                            child: Text(
                              'O escritório Bagatim e Sedrez Sociedade de Advogados conta com profissionais experientes em defesas contra a suspensão do direito de dirigir. Graças ao nosso serviço de atendimento online, temos ajudado inúmeros condutores em Santa Catarina a evitar a suspensão de suas CNHs.\n\nNossa missão é impactar positivamente a vida das pessoas, oferecendo serviços jurídicos personalizados e de alta qualidade, não apenas resolvendo problemas, mas também objetivando a satisfação total de nossos clientes.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: fsWeb18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const CustomButton(
                        text: 'DEFENDER MINHA CNH AGORA',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return SectionComponent(
      innerPadding: 0,
      color: AppColors.darkGrey,
      child: Column(
        children: [
          Container(
            color: AppColors.darkGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'images/partners.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 25),
                  child: Column(
                    children: [
                      Text(
                        'Quem somos',
                        style: TextStyle(
                          fontSize: fsWeb48,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                      const Gap(25),
                      Center(
                        child: SizedBox(
                          child: Text(
                            'O escritório Bagatim e Sedrez Sociedade de Advogados conta com profissionais experientes em defesas contra a suspensão do direito de dirigir. Graças ao nosso serviço de atendimento online, temos ajudado inúmeros condutores em Santa Catarina a evitar a suspensão de suas CNHs.\n\nNossa missão é impactar positivamente a vida das pessoas, oferecendo serviços jurídicos personalizados e de alta qualidade, não apenas resolvendo problemas, mas também objetivando a satisfação total de nossos clientes.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fsWeb18,
                            ),
                          ),
                        ),
                      ),
                      const Gap(25),
                      const CustomButton(
                        text: 'DEFENDER MINHA CNH AGORA',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
