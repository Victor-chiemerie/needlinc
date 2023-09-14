import 'package:flutter/material.dart';
import 'package:needlinc/back_ground_widget.dart';

class SignInPage1 extends StatefulWidget {
  const SignInPage1({super.key});

  @override
  State<SignInPage1> createState() => _SignInPage1State();
}

class _SignInPage1State extends State<SignInPage1> {
  final ErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
  final EnabledBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.zero,
  );
  final FocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue,
    ),
    borderRadius: BorderRadius.zero,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backGround_Widget(),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(top: 60),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 3),
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      'WELCOME TO NEEDLINC',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email or Username',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 1.0, horizontal: 8.0),
                              focusedBorder: FocusedBorder,
                              enabledBorder: EnabledBorder,
                              errorBorder: ErrorBorder,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 1.0, horizontal: 8.0),
                              focusedBorder: FocusedBorder,
                              enabledBorder: EnabledBorder,
                              errorBorder: ErrorBorder,
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              print('clicked');
                            },
                            child: Text('Sign in'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(190, 30),
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              print('clicked');
                            },
                            child: Text('Create New Account'),
                            style: TextButton.styleFrom(
                              fixedSize: Size(190, 30),
                              shape: BeveledRectangleBorder(
                                side: BorderSide(
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              print('clicked');
                            },
                            child: Text(
                              'Sign up with Google',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: TextButton.styleFrom(
                              fixedSize: Size(190, 30),
                              shape: BeveledRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              print('clicked');
                            },
                            child: Text(
                              'Sign up with Facebook',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: TextButton.styleFrom(
                              fixedSize: Size(190, 30),
                              shape: BeveledRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
