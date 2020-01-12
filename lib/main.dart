import 'package:flutter/material.dart';
import 'package:heritage_blog/blog_details_screen.dart';
import 'package:heritage_blog/blog_home.dart';
import 'package:heritage_blog/services/authentication.dart';
import 'package:heritage_blog/wrapper.dart';
import 'package:provider/provider.dart';

import 'modal/User.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Authentication().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
