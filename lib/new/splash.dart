import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/new/shop.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 7), () {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(builder: (BuildContext context) => Shop()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'asset/images/apppic.jpg',
            ), // Apni image ka URL yahan daalo
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 443),
                  Text(
                    'Fashions',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 1,
                          color: const Color.fromARGB(136, 78, 78, 78),
                          offset: Offset(1, 7),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'My Life My Style',
                    style: TextStyle(
                      fontSize: 24,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 1,
                          color: const Color.fromARGB(136, 78, 78, 78),
                          offset: Offset(1, 9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
