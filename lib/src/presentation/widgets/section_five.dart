import 'package:bagatimes/src/presentation/widgets/custom_button.dart';
import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:bagatimes/src/utils/colors.dart';
import 'package:flutter/material.dart';

class SectionFive extends StatelessWidget {
  const SectionFive({super.key});

  @override
  Widget build(BuildContext context) {
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
                color: Colors.white,
                padding: const EdgeInsets.all(80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Quem somos',
                      style: TextStyle(
                        fontSize: 48,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 640,
                          child: Text(
                            'O escritório Bagatim e Sedrez Sociedade de Advogados conta com profissionais experientes em defesas contra a suspensão do direito de dirigir. Graças ao nosso serviço de atendimento online, temos ajudado inúmeros condutores em Santa Catarina a evitar a suspensão de suas CNHs.\n\nNossa missão é impactar positivamente a vida das pessoas, oferecendo serviços jurídicos personalizados e de alta qualidade, não apenas resolvendo problemas, mas também objetivando a satisfação total de nossos clientes.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
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
}
