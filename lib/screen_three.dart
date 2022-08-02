import 'package:flutter/material.dart';
import 'package:navigation_drawer/home_screen.dart';
import 'package:navigation_drawer/screen_two.dart';

class Screen_Three extends StatefulWidget {
  static const String id = 'screen_three';
  const Screen_Three({Key? key}) : super(key: key);

  @override
  State<Screen_Three> createState() => _Screen_ThreeState();
}

class _Screen_ThreeState extends State<Screen_Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Navigation Drawer',
        ),
        backgroundColor: const Color(0xff0764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: const Text('Screen 3'),
            ),
          ),
        ],
      ),
    );
  }
}
