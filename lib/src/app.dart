import 'package:bagatimes/src/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
            useMaterial3: false,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
