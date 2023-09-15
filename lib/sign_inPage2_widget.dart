import 'package:flutter/material.dart';
import 'package:needlinc/back_ground_widget.dart';

class SignInPage2 extends StatefulWidget {
  const SignInPage2({super.key});

  @override
  State<SignInPage2> createState() => _SignInPage2State();
}

class _SignInPage2State extends State<SignInPage2> {
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
  bool addPhoto = false;
  final title = ['NEEDLINC', 'Add Profile photo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backGround_Widget(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons
                          .arrow_back_ios_new, // Specify the icon you want to use
                      size: 30, // Adjust the icon size as needed
                      color: Colors.white, // Customize the icon color
                    ),
                  ),
                  Visibility(
                    visible: addPhoto,
                    child: Text(
                      'NEEDLINC',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Visibility(
                    visible: addPhoto,
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                  )
                ],
              ),
              Center(
                heightFactor: 1.5,
                child: Column(
                  children: [
                    Text(
                      addPhoto ? title.last : title.first,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Visibility(
                      visible: addPhoto,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.only(top: 20),
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
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 28, 15, 0),
                          child: Column(
                            children: [
                              // Create New Account
                              Text(
                                'Create New Account',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Enter Full Name
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter Full Name',
                                        contentPadding:
                                            EdgeInsets.symmetric(horizontal: 8.0),
                                        focusedBorder: FocusedBorder,
                                        enabledBorder: EnabledBorder,
                                        errorBorder: ErrorBorder,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    // Enter User Name
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter User Nmae',
                                        contentPadding:
                                            EdgeInsets.symmetric(horizontal: 8.0),
                                        focusedBorder: FocusedBorder,
                                        enabledBorder: EnabledBorder,
                                        errorBorder: ErrorBorder,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    // Email
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Email',
                                        contentPadding:
                                            EdgeInsets.symmetric(horizontal: 8.0),
                                        focusedBorder: FocusedBorder,
                                        enabledBorder: EnabledBorder,
                                        errorBorder: ErrorBorder,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    // Create Password
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Create Password',
                                        contentPadding:
                                            EdgeInsets.symmetric(horizontal: 8.0),
                                        focusedBorder: FocusedBorder,
                                        enabledBorder: EnabledBorder,
                                        errorBorder: ErrorBorder,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    // Confirm Password
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Confirm Password',
                                        contentPadding:
                                            EdgeInsets.symmetric(horizontal: 8.0),
                                        focusedBorder: FocusedBorder,
                                        enabledBorder: EnabledBorder,
                                        errorBorder: ErrorBorder,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    // Create New Account button
                                    ElevatedButton(
                                      onPressed: () {
                                        print('Create New Account');
                                      },
                                      child: Text('Create New Account'),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(230, 30),
                                        shape: BeveledRectangleBorder(
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
                    Visibility(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(120),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 3),
                              blurRadius: 3.0,
                              spreadRadius: 1.0,
                            )
                          ],
                        ),
                        child: Icon(Icons.add),
                      ),
                      )
                  ],
                ),
              ),
              // Next button
              Visibility(
                visible: addPhoto,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print('Next');
                    },
                    child: Text(
                      'Next',
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
