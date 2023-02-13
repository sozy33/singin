import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Regster_page/components/boutton.dart';
import 'package:Regster_page/components/textfiled.dart';
import 'package:Regster_page/components/sqyer_til.dart';
import 'package:just_audio/just_audio.dart';

import 'home.dart';

class login_page extends StatefulWidget {
  const login_page({super.key, this.ontap});
  final Function()? ontap;
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final emailcontroler = TextEditingController();
  final passwordcontroler = TextEditingController();
  void singin() async {
//SHOW DILOG
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: const CircularProgressIndicator(),
          );
        });
// sing in with email and password
    try {
      final credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroler.text,
        password: passwordcontroler.text,
      );
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      //show error massage to user
      showerrormessg(e.code);
    }

    //POP loding diolog
    Navigator.pop(context);
  }

//show eeror massage to user
  void showerrormessg(String msg) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text(
                msg,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontFamily: 'ro.ttf',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.lock,
              size: 100,
              color: Colors.black,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'welcome back , you\'ve been missed',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
                fontFamily: 'ro.ttf',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            textfild(
              controler: emailcontroler,
              hinttext: 'username',
              obscuretext: false,
            ),
            SizedBox(
              height: 10,
            ),
            textfild(
              controler: passwordcontroler,
              hinttext: 'password',
              obscuretext: true,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'forgot password?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontFamily: 'ro.ttf',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            button(
              onPressed: () {
                setState(() {
                  singin();
                });
              },
              text: 'sign in',
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.2,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                        fontFamily: 'ro.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.2,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                squertil(images: 'images/1.jpg'),
                SizedBox(width: 50),
                squertil(images: 'images/2.jpg'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    widget.ontap!();
                  },
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
