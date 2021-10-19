import 'package:flutter/material.dart';

class DemoSwitch extends StatefulWidget {
  const DemoSwitch({ Key? key }) : super(key: key);

  @override
  _DemoSwitchState createState() => _DemoSwitchState();
}

class _DemoSwitchState extends State<DemoSwitch> {
  bool _isOn = false;
  bool _isOnsubmit = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchListTile(
            title: Text(
              'Option',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            value: _isOn,
            onChanged: (bool? value){
              setState(() {
                _isOn = value!;
              });
            }
          ),
          Text(
            'Switch is turned on: $_isOn',
            style: TextStyle(fontSize: 32),
          ),
          ElevatedButton(
            onPressed: (){
            setState(() {
              _isOnsubmit=_isOn;
            });
          }, 
          child: Text(
            'Submit Switch',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Text(
          _isOnsubmit ? 'Turn On' : 'Turn Off',
          style: TextStyle(fontSize: 32),
        ),
        ],
      ),
    );
  }
}