import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Pages/screen3.dart';
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2>{
  int radioValue = -1;
  void _handleRadioValueChange1(int value){
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HealthPlus'),
      ),
      body: new SafeArea(
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child:new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(7.0),
                  ),
                  new Text(
                    'Tell us more about you',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
                  ),
                  new Text(
                    'We need this information to customize your experience',
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your Age ',
                      labelText: 'Age',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your height',
                      labelText: 'Height',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your weight',
                      labelText: 'Weight',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  new Row(
                      children: <Widget>[
                        new Text(
                          "Gender:",
                          style: TextStyle(color: Colors.black54,fontSize: 17.0),
                        ),
                        new Radio(
                          value: 0,
                          groupValue: radioValue,
                          onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'Male',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Radio(
                          value: 1,
                          groupValue: radioValue,
                          onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'Female',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Radio(
                          value: 2,
                          groupValue: radioValue,
                          onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'Other',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ]),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 40.0),
                      child: new RaisedButton(
                          child: const Text('Next'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Screen3()),
                            );
                          }
                      )),

                ],
              )
          )
      ),
    );
  }
}