import 'package:apneasense/components/drawer.dart';
import 'package:apneasense/pages/realtimedata.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: const Color(0xffF2F2F2),
                radius: 20,
                child: IconButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: Color(0xff64EBB6),
                    ))),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: const CustomDrawer(),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff64EBB6),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,

        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions_outlined),
            label: 'Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],

        currentIndex: 1, // Set the initial index to Home
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RealTimeData(),
                  ));

              break;
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));

              break;
            case 2:
              break;
          }
        },
      ),
    );
  }
}
