import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_ui/UI/signup_form.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topEnd,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF5263FF), Colors.white],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: MediaQuery.of(context).size.width * 0.1,
                      child: Opacity(
                        opacity: 0.8,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFACDE4), Colors.white],
                            ),
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional.centerStart,
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                right: MediaQuery.of(context).size.width * 0.3,
                                child: Container(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontFamily: 'Righteous',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          FormCard(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.indigo, fontSize: 20),
                    )),
              )
            ],
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up With",
                        style: TextStyle(
                            color: Color(0xFFFACDE4),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFFEE8F3),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image(
                              image: AssetImage('assets/icons/google.png'))),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFFEE8F3),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image(
                              image: AssetImage('assets/icons/twitter.png'))),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFFEE8F3),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image(
                              image: AssetImage('assets/icons/facebook.png'))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
