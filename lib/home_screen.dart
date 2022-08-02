import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_three.dart';
import 'package:navigation_drawer/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xff0764abc),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              accountName: Text('Fahad Mehboob'),
              accountEmail: Text('fahad.fakky@hotmail.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pushNamed(context, Screen_Two.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Page 3'),
              onTap: () {
                Navigator.pushNamed(context, Screen_Three.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text('Home Page'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Screen_Two.id);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: ((context) => Screen_Two())),
                // );
              },
              child: const Text('Screen 1'),
            ),
          ),
        ],
      ),
    );
  }
}
