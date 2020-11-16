import 'package:flutter/material.dart';
class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("second page view"),),
      body: Center(
        child: RaisedButton(
          child: Text("return first view"),
          onPressed: (){

            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}