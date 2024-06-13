import 'package:bagatimes/src/presentation/widgets/section_component.dart';
import 'package:bagatimes/src/utils/colors.dart';
import 'package:bagatimes/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class FaqItem {
  String question;
  String answer;
  bool isExpanded;

  FaqItem({
    required this.question,
    required this.answer,
    this.isExpanded = false,
  });
}

class SectionFive extends StatefulWidget {
  const SectionFive({super.key});

  @override
  State<SectionFive> createState() => _SectionFiveState();
}

class _SectionFiveState extends State<SectionFive> {
  final List<FaqItem> _faqItems = [
    FaqItem(
      question: 'Qual é o maior benefício em oferecer a defesa ou recurso?',
      answer:
          'Com a defesa/recurso você tem chances de evitar tanto a suspensão da sua CNH quanto a necessidade de realizar o curso de reciclagem e prova teórica no Detran.',
    ),
    FaqItem(
        question: 'Quais os riscos de dirigir com a CNH suspensa?',
        answer:
            'Ao dirigir com suspensão em sua CNH, você pode tê-la cassada. Nesse caso, você terá que ficar 2 anos sem dirigir e fazer o procedimento de reabilitação.'),
    FaqItem(
      question: 'Quanto tempo demora o processo?',
      answer:
          'Varia muito, mas em razão da alta demanda a tendência é durar meses; e enquanto durar o processo você pode continuar dirigindo normalmente',
    ),
    // Add more FAQ items here
  ];

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      innerPadding: paddingWeb40,
      color: AppColors.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Perguntas Frequentes',
            style: TextStyle(
              fontSize: SizerUtil.width > 900 ? 24 : 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1,
            ),
            textAlign:
                SizerUtil.width > 900 ? TextAlign.start : TextAlign.center,
          ),
          const Gap(10),
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                // Update the state of the item
                for (var element in _faqItems) {
                  if (element.question != _faqItems[index].question) {
                    element.isExpanded = false;
                  }
                }
                _faqItems[index].isExpanded = !_faqItems[index].isExpanded;
              });
            },
            dividerColor: AppColors.secondary,
            expandIconColor: AppColors.primary,
            animationDuration: const Duration(milliseconds: 400),
            expandedHeaderPadding: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 15,
            ),
            children: _faqItems.map<ExpansionPanel>((FaqItem item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    hoverColor: AppColors.primary.withOpacity(.1),
                    splashColor: AppColors.primary.withOpacity(.1),
                    onTap: () {
                      setState(() {
                        // Update the state of the item
                        for (var element in _faqItems) {
                          if (element.question != item.question) {
                            element.isExpanded = false;
                          }
                        }
                        item.isExpanded = !item.isExpanded;
                      });
                    },
                    title: Text(
                      item.question,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: fsWeb16,
                      ),
                    ),
                  );
                },
                body: ListTile(
                  title: Text(
                    item.answer,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fsWeb16,
                    ),
                  ),
                ),
                isExpanded: item.isExpanded,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
