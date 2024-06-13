import 'package:bagatimes/src/router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
            useMaterial3: false,
          ),
          builder: (context, child) {
            var overlay = Overlay(
              initialEntries: [
                OverlayEntry(
                  builder: (context) => child!,
                ),
                if (SizerUtil.width > 900)
                  OverlayEntry(
                    builder: (context) => Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () async {
                          final uri = Uri.parse(
                              'https://wa.me/+554799262830?text=${Uri.encodeComponent('Quero um orçamento para defender meu direito de dirigir')}');
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri);
                          } else {
                            throw 'Could not launch $uri';
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 25, 25),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 0,
                                bottom: 0,
                                left: 0,
                                top: 0,
                                child: Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    height: 55,
                                    width: 55,
                                  ),
                                ),
                              ),
                              Image.asset(
                                'images/wpp_business.png',
                                height: 85,
                                width: 85,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );

            return BotToastInit()(context, overlay);
          },
          routerConfig: goRouter,
        );
      },
    );
  }
}
