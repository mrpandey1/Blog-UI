import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:heritage_blog/blog_home.dart';
import 'package:provider/provider.dart';

import 'authenticate/authenticate.dart';
import 'modal/User.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return BlogHome();
    }
  }
}
