import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:heritage_blog/services/authentication.dart';
import 'package:heritage_blog/shared/loading.dart';

Authentication _auth = Authentication();

class Signup extends StatefulWidget {
  final Function toggleView;
  Signup({this.toggleView});
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  bool emailValid = true;
  bool passwordValid = true;
  bool password2Valid = true;
  String err = '';
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Loading()
        : Material(
            child: Stack(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkCgdoQ9Qmz3vctd6saYaLhj--6MjY_a1jJas19fYdI432aAl-'),
                            fit: BoxFit.fill)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: new Container(
                        decoration: new BoxDecoration(
                            color: Colors.white.withOpacity(0.0)),
                      ),
                    )),
                ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    _signupForm(context, widget.toggleView),
                  ],
                ),
              ],
            ),
          );
  }

  Container _signupForm(BuildContext context, toggleView) {
    String email;
    String password;
    String password2;
    return Container(
      padding: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 500,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.white),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            errorText:
                                emailValid ? null : "Email should not be null",
                            icon: Icon(
                              Icons.email,
                              color: Colors.red,
                            )),
                        onChanged: (val) => email = val,
                      ),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.red.shade400,
                      ),
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            errorText: passwordValid
                                ? null
                                : "password must be greater than 6 characters",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.red,
                            )),
                        onChanged: (val) => password = val,
                      ),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.red.shade400,
                      ),
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black),
                        controller: password2Controller,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            errorText:
                                password2Valid ? null : "Passwords don't match",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.red.shade400,
                      ),
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: RaisedButton(
                                onPressed: toggleView,
                                color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 10, bottom: 10),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ),
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: RaisedButton(
                                onPressed: () async {
                                  setState(() {
                                    emailController.text.trim().length < 1
                                        ? emailValid = false
                                        : emailValid = true;
                                    passwordController.text.trim().length < 6
                                        ? passwordValid = false
                                        : passwordValid = true;
                                    passwordController.text.trim() ==
                                            password2Controller.text.trim()
                                        ? password2Valid = true
                                        : password2Valid = false;
                                  });
                                  if (emailValid &&
                                      passwordValid &&
                                      password2Valid) {
                                    emailController.clear();
                                    passwordController.clear();
                                    password2Controller.clear();
                                    setState(() => isLoading = true);
                                    dynamic result = await _auth
                                        .userRegistration(email, password);
                                    if (result == null) {
                                      setState(() {
                                        isLoading = false;
                                        err =
                                            'Email is Badly Formatted or already used';
                                      });
                                    }
                                  }
                                },
                                color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 10, bottom: 10),
                                  child: Text(
                                    'Register',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        err,
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue.shade600,
                child: Image(
                  image: NetworkImage(
                      'https://www.logolynx.com/images/logolynx/15/1588b3eef9f1607d259c3f334b85ffd1.png'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
