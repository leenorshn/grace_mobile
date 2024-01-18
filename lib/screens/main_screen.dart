import 'package:flutter/material.dart';
import 'package:grace/screens/home_screen.dart';
import 'package:grace/screens/my_demand_screen.dart';

enum Screen { home, myDemands }

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Screen screen = Screen.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: screen == Screen.home ? const HomeScreen() : const MyDemandScreen(),
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                screen = Screen.home;
              });
            },
            child: Container(
              color: screen == Screen.home ? Colors.blue : Colors.white,
              height: 64,
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: screen == Screen.home ? 18 : 15,
                    fontWeight: screen == Screen.home
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: screen == Screen.home ? Colors.white : Colors.blue,
                  ),
                ),
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                screen = Screen.myDemands;
              });
            },
            child: Container(
              color: screen == Screen.myDemands ? Colors.blue : Colors.white,
              height: 64,
              child: Center(
                child: Text(
                  "Mes demandes",
                  style: TextStyle(
                    fontSize: screen == Screen.myDemands ? 18 : 15,
                    fontWeight: screen == Screen.myDemands
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color:
                        screen == Screen.myDemands ? Colors.white : Colors.blue,
                  ),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
