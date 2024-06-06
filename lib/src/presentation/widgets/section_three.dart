import 'package:bagatimes/src/presentation/widgets/custom_button.dart';
import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:bagatimes/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      innerPadding: 80,
      color: AppColors.darkGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'São oportunidades para oferecer defesa',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(50),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset('images/service_placeholder.png'),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Image.asset('images/wrench.png'),
                            )
                          ],
                        ),
                        const Gap(50),
                        const Text(
                          'DEFESA PRÉVIA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(15),
                        const Text(
                          'Primeira oportunidade para oferecer a defesa no processo de suspensão, nesta fase já é possível impedir a suspensão e ter o processo arquivado.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset('images/service_placeholder.png'),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Image.asset('images/wrench.png'),
                            )
                          ],
                        ),
                        const Gap(50),
                        const Text(
                          'RECURSO À JARI',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(15),
                        const Text(
                          'Caso a defesa prévia não seja acatada, é possível oferecer recurso à JARI, e nesta etapa as chances de deferimento são ainda maiores.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset('images/service_placeholder.png'),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Image.asset('images/wrench.png'),
                            )
                          ],
                        ),
                        const Gap(50),
                        const Text(
                          'RECURSO AO CETRAN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(15),
                        const Text(
                          'Esta é a última instância do processo administrativo, ainda mais importante a ajuda de um advogado especializado no tema.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset('images/service_placeholder.png'),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Image.asset('images/wrench.png'),
                            )
                          ],
                        ),
                        const Gap(50),
                        const Text(
                          'AÇÃO JUDICIAL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(15),
                        const Text(
                          'Se todas as instâncias administrativas forem esgotadas, é possível recorrer à justiça. Uma ação judicial pode reverter a decisão e garantir seu direito de dirigir.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(75),
          CustomButton(
            onPressed: () {},
            text: 'QUERO DEFENDER MEU DIREITO DE DIRIGIR',
          ),
        ],
      ),
    );
  }
}
