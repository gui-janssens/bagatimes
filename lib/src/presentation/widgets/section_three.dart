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
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child:
                                  Image.asset('images/service_placeholder.png'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Center(
                                child: Image.asset(
                                  'images/shield.png',
                                  color: Colors.white,
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child:
                                  Image.asset('images/service_placeholder.png'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Center(
                                child: Image.asset(
                                  'images/people.png',
                                  color: Colors.white,
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child:
                                  Image.asset('images/service_placeholder.png'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Center(
                                child: Image.asset(
                                  'images/car_on_hand.png',
                                  color: Colors.white,
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child:
                                  Image.asset('images/service_placeholder.png'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Center(
                                child: Image.asset(
                                  'images/martelin.png',
                                  color: Colors.white,
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(50),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'DEFESA PRÉVIA',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'RECURSO À JARI',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'RECURSO AO CETRAN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'AÇÃO JUDICIAL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Primeira oportunidade para oferecer a defesa no processo de suspensão, nesta fase já é possível impedir a suspensão e ter o processo arquivado.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Gap(25),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Caso a defesa prévia não seja acatada, é possível oferecer recurso à JARI, e nesta etapa as chances de deferimento são ainda maiores.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Gap(25),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Esta é a última instância do processo administrativo, ainda mais importante a ajuda de um advogado especializado no tema.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Gap(25),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Se todas as instâncias administrativas forem esgotadas, é possível recorrer à justiça. Uma ação judicial pode reverter a decisão e garantir seu direito de dirigir.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          const Gap(75),
          const CustomButton(
            text: 'QUERO DEFENDER MEU DIREITO DE DIRIGIR',
          ),
        ],
      ),
    );
  }
}
