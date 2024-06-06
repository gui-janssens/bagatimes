import 'package:bagatimes/src/presentation/widgets/custom_button.dart';
import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      innerPadding: 80,
      asset: 'images/bg.jpeg',
      minHeight: MediaQuery.of(context).size.height,
      color: Colors.black.withOpacity(.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'Recebeu notificação de suspensão do direito de dirigir?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w900,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
          const Gap(15),
          const SizedBox(
            child: Text(
              'Converse com advogados especialistas e veja o que\npode ser feito para evitar a suspensão da sua CNH',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(50),
          CustomButton(
            onPressed: () {},
            text: 'QUERO CONVERSAR COM UM ADVOGADO',
          ),
        ],
      ),
    );
  }
}
