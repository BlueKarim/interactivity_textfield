import 'package:flutter/material.dart';
import 'package:interactivity_textfield/DemoRadio.dart';
import 'DemoTextField.dart';
import 'DemoSwitch.dart';
import 'DemoCheckBox.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Form'),
          backgroundColor: Colors.teal[300],
        ),
        body: DemoRadio(),
      ),
    );
  }
}