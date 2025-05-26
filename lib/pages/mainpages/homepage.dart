import 'package:fealty/pages/secondarypages/notifications.dart';
import 'package:fealty/pages/secondarypages/profileview.dart';
import 'package:fealty/pages/secondarypages/settings.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Profileview()));
              },
              icon: const Icon(PhosphorIconsFill.userCircle)),
          const SizedBox(
            width: 250,
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              icon: const Icon(PhosphorIconsFill.gear)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Notifications()));
              },
              icon: const Icon(PhosphorIconsFill.bell)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const Text("Recent Activity:"),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 180,
                    height: 310,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      const Text("Amount Collected:"),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 191,
                        height: 140,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Properties:"),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 191,
                        height: 140,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Payment Status:"),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 400,
                height: 314,
              )
            ],
          )
        ],
      ),
    );
  }
}
