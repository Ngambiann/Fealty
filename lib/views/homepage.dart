import 'package:flutter/material.dart';

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
        title: const Text("heyyy"),
      ),

      drawer:Drawer(
        backgroundColor: Colors.black38,
        child: ListView(
          children: [
            const SizedBox(
              height:100,
            ),
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {},
                  label: const Text("Settings",
                      style: TextStyle(color: Colors.black))),
            ),
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {},
                  label: const Text("Settings",
                      style: TextStyle(color: Colors.black))),
            ),
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {},
                  label: const Text("Settings",
                      style: TextStyle(color: Colors.black))),
            ),
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {},
                  label: const Text("Settings",
                      style: TextStyle(color: Colors.black))),
            ),
              ],
            )
        ),
    );
  }
}
