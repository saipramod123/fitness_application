import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Pages/screen4.dart';
class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool diaVal = false;
  bool resVal = false;
  bool tubVal = false;
  bool canVal = false;
  bool gynVal = false;


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
                    'Tell us about your health',
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
                    'Tick the diseases you are prone to',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold),

                  ),
                  new Row(
                      children: <Widget>[
                        new Text(
                          "Diabetis",
                          style: TextStyle(
                              color: Colors.black54, fontSize: 17.0),
                        ),
                        new Checkbox(
                          value: diaVal,
                          onChanged: (bool value) {
                            setState(() {
                              diaVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Respiratory problems',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: resVal,
                          onChanged: (bool value) {
                            setState(() {
                              resVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Tuberculosis',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: tubVal,
                          onChanged: (bool value) {
                            setState(() {
                              tubVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Cancer',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: canVal,
                          onChanged: (bool value) {
                            setState(() {
                              canVal = value;
                            });
                          },
                        ),
                      ]),
                  new Row(
                      children: <Widget>[
                        new Text(
                          'Gynic Problems',
                          style: new TextStyle(color:Colors.black54, fontSize: 16.0),
                        ),
                        new Checkbox(
                          value: gynVal,
                          onChanged: (bool value) {
                            setState(() {
                              gynVal = value;
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
                                  Screen4()),
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
