import 'package:Regster_page/pages/login%20_or_regster_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home.dart';
import 'Regster_page.dart';
import 'login_page.dart';

class Auth_page extends StatelessWidget {
  const Auth_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user login
        if (snapshot.hasData) {
          return const home();
          //  user is not login
        } else {
          return loginorRegster();
          ///erroraka chya?
          ///hich eerio nia balam ka amawe  naika login nabe?
          ///bale awash naka coda kanish ke shaian nia
        }
      },
    ));
  }
}
