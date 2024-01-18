import 'package:flutter/material.dart';
import 'package:grace/services/datasource/data_source.dart';
import 'package:grace/services/datasource/firebase_service.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  int? selectedOption = securityData.first.id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert securitaire"),
        elevation: 1,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Column(
            children: securityData.map((e) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RadioListTile(
                    title: Text(
                      '${e.cause}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text("${e.detail}"),
                    value: e.id,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = e.id;
                      });
                    },
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () async {
                setState(() {});
                await FService().sendAlert(
                    "Securité", securityData[selectedOption!].detail);
              },
              child: const Text("Envoyer ma demande"),
            ),
          )
        ],
      ),
    );
  }
}
