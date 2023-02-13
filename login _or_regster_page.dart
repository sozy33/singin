import 'package:Regster_page/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:Regster_page/pages/Regster_page.dart';
import 'package:Regster_page/pages/registar_page.dart';

class loginorRegster extends StatefulWidget {
  const loginorRegster({super.key});

  @override
  State<loginorRegster> createState() => _loginorRegsterState();
}

class _loginorRegsterState extends State<loginorRegster> {
  // initally show login page
  bool showloginpage = true;
  // toggle between login and register page
  void toggleview() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return login_page(
        ontap: toggleview,
      );
    } else {
      return Regster_page(
        ontap: toggleview,
      );
    }
  }
}
