import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),

      ),
    );
  }
}