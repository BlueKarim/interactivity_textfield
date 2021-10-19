import 'package:flutter/material.dart';

class DemoCheckBox extends StatefulWidget {
  const DemoCheckBox({ Key? key }) : super(key: key);

  @override
  _DemoCheckBoxState createState() => _DemoCheckBoxState();
}

class _DemoCheckBoxState extends State<DemoCheckBox> {
  bool _isChecked = false;
  bool _isCheckedSubmit = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              'Option',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            leading: Checkbox(
              value: _isChecked,
              onChanged: (bool? value){
                setState(() {
                  _isChecked = value!;
                });
              }
            ),
          ),
          Text(
            'Checkbox is checked: $_isChecked',
            style: TextStyle(fontSize: 32),
          ),
          ElevatedButton(
            onPressed: (){
            setState(() {
              _isCheckedSubmit=_isChecked;
            });
          }, 
          child: Text(
            'Submit CheckBox',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Text(
          _isCheckedSubmit ? 'Checked' : 'Not Checked',
          style: TextStyle(fontSize: 32),
        ),
        ],
      ),
    );
  }
}