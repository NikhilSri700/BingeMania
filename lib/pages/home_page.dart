import 'package:binge_mania/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final day = 1;
    final name = "Nikhil";

    return Scaffold(
      appBar: AppBar(
        title: Text("Binge Mania"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("My First day $day Flutter App by $name"),
        ),
      ),
    );
  }
}
