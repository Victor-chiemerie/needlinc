import 'package:flutter/material.dart';

class WelcomeText extends StatefulWidget {
  const WelcomeText({super.key});

  @override
  State<WelcomeText> createState() => _WelcomeTextState();
}

class _WelcomeTextState extends State<WelcomeText> {

@override
void initState() {
  super.initState();
  changeTextAfterDelay();
}

  final words = [
    'NEEDLINC',
    'NEEDLINC connects all FUTO students to freelancers or workers who are nearby',
    'We provide a secure, safe and fast environment for both artisians and students'
    ];

    void changeTextAfterDelay() {
      for (var i = 0; i < words.length; i++) {
        Future.delayed(Duration(seconds: 3), () {setState(() {
          words[0] = words[2];
      });});
      }
    }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.38,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 153, 203, 245),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.36,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 84, 171, 242),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.34,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Text(
            words.first,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
          ),
        )
      ],
    );
  }
}