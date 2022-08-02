import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_three.dart';

class Screen_Two extends StatefulWidget {
  static const String id = 'screen_two';
  const Screen_Two({Key? key}) : super(key: key);

  @override
  State<Screen_Two> createState() => _Screen_TwoState();
}

class _Screen_TwoState extends State<Screen_Two> {
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
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: const Text('Fahad Mehbooob'),
                  subtitle: const Text("It's Navigation Drawer Example"),
                  onTap: () {
                    Navigator.pushNamed(context, Screen_Three.id);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
