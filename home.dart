import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  void singout() async {
    await FirebaseAuth.instance.signOut();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              singout();
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
        title: const Text('home'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
