import 'package:flutter/material.dart';


class CorrectWordsScreen extends StatefulWidget {
  const CorrectWordsScreen({Key? key}) : super(key: key);

  @override
  State<CorrectWordsScreen> createState() => _CorrectWordsScreenState();
}

class _CorrectWordsScreenState extends State<CorrectWordsScreen> {
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
