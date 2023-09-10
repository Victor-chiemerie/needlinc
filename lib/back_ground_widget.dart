import 'package:flutter/material.dart';

class backGround_Widget extends StatelessWidget {
  const backGround_Widget({super.key});

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