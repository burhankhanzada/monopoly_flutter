import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monopoly_flutter/ui/home.dart';
import 'package:spaces2/spaces2.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      builder: (context, child) => Spacing.fixed(
        data: SpacingData.generate(8),
        child: child!,
      ),
    );

    return app;

    // return ScreenUtilInit(
    //   designSize: const Size(1000, 1000),
    //   builder: (context, child) {
    //     return app;
    //   },
    // );
  }
}
