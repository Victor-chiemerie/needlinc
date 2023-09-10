import 'package:flutter/material.dart';
import 'package:needlinc/back_ground_widget.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key});

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  final words = [
    'NEEDLINC connects all FUTO students to freelancers or workers who are nearby',
    'We provide a secure, safe and fast environment for both artisians and students'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            // Tripple Layer
            children: [
              backGround_Widget(),
              Container(
                height: MediaQuery.of(context).size.height * 0.34,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40, right: 40),
                alignment: Alignment.center,
                child: Text(
                  words.first,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          // NeedLinc image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.37,
            margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/logo.png"),
              ),
            ),
          ),
          // Next button
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 20, top: 70),
            child: ElevatedButton(
              onPressed: () => print('pressed'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(16),
              ),
              child: Text(
                "NEXT",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          // SizedBox(
          //   height: 50
          // ),

          // Little circles below
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.5 * 19),
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 4.0),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.5 * 15),
                    color: const Color.fromARGB(255, 143, 196, 240),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
