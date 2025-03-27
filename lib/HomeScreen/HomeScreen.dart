import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getAppbar());
  }

  Widget getAppbar() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black87),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(Icons.menu, size: 20),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "October 2024",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
