import 'package:car_booking_ui/page/mobileView.dart';
import 'package:car_booking_ui/page/webView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking UI',
      theme: ThemeData(
        fontFamily: GoogleFonts.slabo27px().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxLayout(
      builder: (ctx, size, _) {
        print(size);
        if (size == VxWindowSize.xsmall) {
          return MobileView();
        } else {
          return WebView();
        }
      },
    );
  }
}
