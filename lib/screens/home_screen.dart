import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grace/screens/ambulance/ambulance_screen.dart';
import 'package:grace/screens/security/security_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Urgence App",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24),
              ),
              height: 120,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: const Icon(
                    Icons.local_shipping,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Ambulance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  subtitle: const Text(
                    "Demande",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: const Icon(
                    CupertinoIcons.chevron_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AmbulanceScreen()));
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(24),
              ),
              height: 120,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: const Icon(
                    Icons.gpp_maybe_sharp,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Securité",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  subtitle: const Text(
                    "Demande",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: const Icon(
                    CupertinoIcons.chevron_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecurityScreen()));
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
              height: 120,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: const Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Corbiare",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  subtitle: const Text(
                    "Demande",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: const Icon(
                    CupertinoIcons.chevron_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AmbulanceScreen()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
