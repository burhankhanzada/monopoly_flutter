import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monopoly_flutter/ui/home.dart';
import 'package:spaces2/spaces2.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(textTheme: GoogleFonts.latoTextTheme()),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Spacing.fixed(
        data: SpacingData.generate(8),
        child: child!,
      ),
    );
  }
}
