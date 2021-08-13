import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final day = 1;
    final name = "Nikhil";

    return Scaffold(
      appBar: AppBar(
        title: Text("Binge Mania"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("My First day $day Flutter App by $name"),
        ),
      ),
    );
  }
}
