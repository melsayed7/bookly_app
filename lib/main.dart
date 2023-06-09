import 'package:bookly_app/constant.dart';
import 'package:bookly_app/features/home/presentation/view/book_details_screen.dart';
import 'package:bookly_app/features/home/presentation/view/home_screen.dart';
import 'package:bookly_app/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        BookDetailsScreen.routeName: (context) => const BookDetailsScreen(),
      },
    );
  }
}
