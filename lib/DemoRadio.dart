import 'package:flutter/material.dart';

class DemoRadio extends StatefulWidget {
  const DemoRadio({ Key? key }) : super(key: key);

  @override
  _DemoRadioState createState() => _DemoRadioState();
}

class _DemoRadioState extends State<DemoRadio> {
  String _radioValue='';
  String _radioSubmit = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              'Option A',
              style: TextStyle(fontSize: 32),
            ),
            leading: Radio(
              value: 'A',
              groupValue: _radioValue,
              onChanged: (String? value){
                setState(() {
                  _radioValue = value!;
                });
              },),
          ),
          ListTile(
            title: Text(
              'Option B',
              style: TextStyle(fontSize: 32),
            ),
            leading: Radio(
              value: 'B',
              groupValue: _radioValue,
              onChanged: (String? value){
                setState(() {
                  _radioValue = value!;
                });
              },),
          ),
          ListTile(
            title: Text(
              'Option C',
              style: TextStyle(fontSize: 32),
            ),
            leading: Radio(
              value: 'C',
              groupValue: _radioValue,
              onChanged: (String? value){
                setState(() {
                  _radioValue = value!;
                });
              },),
          ),
          ListTile(
            title: Text(
              'Option D',
              style: TextStyle(fontSize: 32),
            ),
            leading: Radio(
              value: 'D',
              groupValue: _radioValue,
              onChanged: (String? value){
                setState(() {
                  _radioValue = value!;
                });
              },),
          ),
          Text(
            '$_radioValue was chosen',
            style: TextStyle(fontSize: 32),
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                _radioSubmit = _radioValue;
              });
            },
            child: Text(
              'Submit Radio',
              style: TextStyle(fontSize: 32),
            ),
          ),
          Text(
            '$_radioSubmit was chosen',
            style: TextStyle(fontSize: 32),
          ),
        ],),
    );
  }
}