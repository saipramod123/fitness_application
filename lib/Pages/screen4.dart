import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Pages/screen4.dart';
import 'package:my_app/Pages//Dashboard.dart';
import'package:my_app/Pages/welcome1.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool milkVal = false;
  bool eggVal = false;
  bool treeVal = false;
  bool peaVal = false;
  bool shellVal = false;
  bool wheVal = false;
  bool soyVal = false;
  bool fishVal = false;


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
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(7.0),
                  ),
                  new Text(
                    'Tell us about your food preferences',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  new Text(
                    'We need this information to customize your experience',
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  new Text(
                    'Tick the food items you would like to avoid',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold),

                  ),
                  new Row(
                      children: <Widget>[
                        new Text(
                          "Milk",
                          style: TextStyle(
                              color: Colors.black54, fontSize: 17.0),
                        ),
                        new Checkbox(
                          value: milkVal,
                          onChanged: (bool value) {
                            setState(() {
                              milkVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Egg',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: eggVal,
                          onChanged: (bool value) {
                            setState(() {
                              eggVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Tree Nuts',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: treeVal,
                          onChanged: (bool value) {
                            setState(() {
                              treeVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Peanuts',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: peaVal,
                          onChanged: (bool value) {
                            setState(() {
                              peaVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Shellfish',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: shellVal,
                          onChanged: (bool value) {
                            setState(() {
                              shellVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Wheat',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: wheVal,
                          onChanged: (bool value) {
                            setState(() {
                              wheVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Soy',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: soyVal,
                          onChanged: (bool value) {
                            setState(() {
                              soyVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Fish',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: fishVal,
                          onChanged: (bool value) {
                            setState(() {
                              fishVal = value;
                            });
                          },
                        ),
                      ]),
                  new TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Specify if any',
                      labelText: 'Others',
                    ),
                  ),


                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 40.0),
                      child: new RaisedButton(
                          child: const Text('Next'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                              MyApp1()),
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
