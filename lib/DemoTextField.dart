import 'package:flutter/material.dart';

class DemoTextField extends StatefulWidget {
  const DemoTextField({ Key? key }) : super(key: key);

  @override
  _DemoTextFieldState createState() => _DemoTextFieldState();
}

class _DemoTextFieldState extends State<DemoTextField> {
  late TextEditingController _textEditingController;
  String _text = 'Hello';
  String _textSubmit = 'Hi';
  @override
  void initState(){
    super.initState();
    _textEditingController=TextEditingController();
  }
  void dispose(){
    _textEditingController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textEditingController,
            style: TextStyle(fontSize: 32),
            onChanged: (text){
              setState(() {
                _text = text;
              });
            },
          ),
          Text(
            'Hello $_text',
            style: TextStyle(fontSize: 32),
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                _textSubmit = _textEditingController.text;
              });
            },
            child: Text(
              'Submit Text',
              style: TextStyle(fontSize: 32),
            ),
          ),
          Text(
            'Hi $_textSubmit',
            style: TextStyle(fontSize: 32),
          )
        ],
      ),
    );
  }
}