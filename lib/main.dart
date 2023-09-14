import 'package:flutter/material.dart';
import 'package:needlinc/sign_inPage1_widget.dart';
import 'package:needlinc/welcomePage2_widget.dart';
import 'welcomepage1_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage1(),
    );
  }
}