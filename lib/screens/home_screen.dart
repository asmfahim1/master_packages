import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zero to Unicorn"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline_outlined,
                size: 20,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "User",
                  style: TextStyle(fontSize: 30),
                )),
            TextButton(
              onPressed: () {},
              child: const Text("Admin", style: TextStyle(fontSize: 30)),
            )
          ],
        ),
      ),
    );
  }
}
