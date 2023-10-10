import 'package:flutter/material.dart';

class MainScren extends StatefulWidget {
  const MainScren({Key? key}) : super(key: key);

  @override
  State<MainScren> createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

        ),
      ),
    );
  }
}
