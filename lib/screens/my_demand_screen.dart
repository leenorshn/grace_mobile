import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDemandScreen extends StatelessWidget {
  const MyDemandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes demandes"),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.refresh),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 4,
        itemExtent: 120,
        itemBuilder: (context, index) {
          return const Card(
            margin: EdgeInsets.only(top: 1),
            child: Center(
              child: ListTile(
                leading: Icon(
                  Icons.safety_check_rounded,
                  size: 32,
                ),
                title: Text(
                  "Demande d'ambilance",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                subtitle: Text("Envoyé -- 12/01/2024 à 17h30"),
              ),
            ),
          );
        },
      ),
    );
  }
}
