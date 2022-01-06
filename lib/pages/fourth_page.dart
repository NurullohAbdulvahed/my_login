import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);
  static final String id = "first_page";

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Fourth Page"),
      ),
    );
  }
}