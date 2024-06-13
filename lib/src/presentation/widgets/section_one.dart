import 'package:bagatimes/src/presentation/widgets/custom_button.dart';
import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:bagatimes/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      innerPadding: paddingWeb80,
      asset: 'images/bg.jpeg',
      minHeight: MediaQuery.of(context).size.height,
      color: Colors.black.withOpacity(.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Recebeu notificação de suspensão do direito de dirigir?',
            style: TextStyle(
              color: Colors.white,
              fontSize: fsWeb36,
              fontWeight: FontWeight.w900,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
          const Gap(15),
          SizedBox(
            child: Text(
              'Converse com advogados especialistas e veja o que${SizerUtil.width > 900 ? '\n' : ' '}pode ser feito para evitar a suspensão da sua CNH',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fsWeb24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(50),
          const CustomButton(
            text: 'QUERO CONVERSAR COM UM ADVOGADO',
          ),
        ],
      ),
    );
  }
}
