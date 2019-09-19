import 'package:flutter/material.dart';
import 'package:flutter_app/Category.dart';

class HelloRectangule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 500.0,
        color: Colors.grey,
        child: Center(
          child: Text(
            'Body Rectangule',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Category(),
    ),
  ));
}
