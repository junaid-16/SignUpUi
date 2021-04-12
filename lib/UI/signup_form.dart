import 'package:flutter/material.dart';

class FormCard extends StatefulWidget {
  const FormCard({
    Key? key,
  }) : super(key: key);

  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  bool _isObscure = true;
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 4,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.28,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _emailController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.black54),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _emailController.clear();
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.black,
                            )),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black54),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.black,
                            )),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.08,
            bottom: -MediaQuery.of(context).size.width *
                0.30 /
                2, //calculation: half of the size of card's container's height
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color(0xFF5263FF),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.30,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
