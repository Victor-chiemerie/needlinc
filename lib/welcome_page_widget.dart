import 'package:flutter/material.dart';
import 'package:needlinc/back_ground_widget.dart';

class WelcomePage1 extends StatefulWidget {
  const WelcomePage1({super.key});

  @override
  State<WelcomePage1> createState() => _WelcomePage1State();
}

class _WelcomePage1State extends State<WelcomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              backGround_Widget(),
              Container(
                height: MediaQuery.of(context).size.height * 0.34,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Text(
                  'NEEDLINC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                ),
              )
            ],
          ),
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
          )
        ],
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:needlinc/background_widget.dart';

// class WelcomePage1 extends StatelessWidget {
//   const WelcomePage1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Tripple Layer
//           Container(
//             alignment: Alignment.topCenter,
//             child: WelcomeText(),
//           ),
//           // NeedLinc image
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height * 0.37,
//             margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               fit: BoxFit.fill,
//               image: AssetImage("images/logo.png"),
//             )),
//           ),
//           // Next button
//           Container(
//             // width: MediaQuery.of(context).size.width,
//             alignment: Alignment.bottomRight,
//             margin: EdgeInsets.only(right: 20, top: 70),
//             child: ElevatedButton(
//                 onPressed: () => print('pressed'),
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   backgroundColor: Colors.blue,
//                   padding: EdgeInsets.all(16),
//                 ),
//                 child: Text(
//                   "NEXT",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 )),
//           ),
//           // Little circles below
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 19,
//                   height: 19,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(0.5 * 19),
//                     color: Colors.blue,
//                   ),
//                 ),
//                 SizedBox(width: 4.0),
//                 Container(
//                   width: 15,
//                   height: 15,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(0.5 * 15),
//                     color: const Color.fromARGB(255, 143, 196, 240),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
