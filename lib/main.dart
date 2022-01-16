import 'package:flutter/material.dart';
import 'package:flutter_wp_clone/whatsapp_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: const Color(0xff075E54),
        secondaryHeaderColor: const Color(0xffa5d6a7),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff075E54),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const WhatsAppHome(),
    );
  }
}
