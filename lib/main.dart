import 'package:flutter/material.dart';
import 'package:utssaya/halaman/home.dart';
import 'package:utssaya/halaman/booking.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project uts',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/booking': (context) => BookingPage(),
      },
    );
  }
}
