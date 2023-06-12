import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NavigationHome extends StatefulWidget {
  const NavigationHome({super.key});

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(25), // here the desired height
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 9, 6, 184),
          )),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month),
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Schedules',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.qr_code_rounded),
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.announcement),
            icon: Icon(Icons.announcement_outlined),
            label: 'Notice',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Color.fromARGB(255, 248, 248, 248),
          alignment: Alignment.center,
          child: const Text('HomePage'),
        ),
        Container(
          color: Color.fromARGB(255, 248, 248, 248),
          alignment: Alignment.center,
          child: const Text('Schedules Page'),
        ),
        Container(
          color: Color.fromARGB(255, 248, 248, 248),
          alignment: Alignment.center,
          child: const Text('Scan QR'),
        ),
        Container(
          color: Color.fromARGB(255, 248, 248, 248),
          alignment: Alignment.center,
          child: const Text('Announcements Page'),
        ),
        Container(
          color: Color.fromARGB(255, 248, 248, 248),
          alignment: Alignment.center,
          child: const Text('Profile Information Page'),
        ),
      ][currentPageIndex],
    );
  }
}
