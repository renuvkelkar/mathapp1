import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathapp/MyDrawer.dart';
import 'package:mathapp/cat_list.dart';
import 'package:mathapp/testlist.dart';

class getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final data = MediaQuery.of(context);
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return quizpage(mydata: mydata);
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  var mydata;

  quizpage(Key key, @required this.mydata) : super(key: key);

  @override
  _quizpageState createState() => _quizpageState(mydata);
}

class _quizpageState extends State<quizpage> {
  var mydata;

  _quizpageState(this.mydata);

  Widget Choicebutton() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          'option1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          maxLines: 1,
        ),
        color: Colors.deepOrange,
        splashColor: Colors.deepOrangeAccent[600],
        highlightColor: Colors.deepOrangeAccent[600],
        minWidth: 400.0,
        height: 40.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(""
                      "11+maths"),
                  content: Text("you can not go back in this stage"),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("OK"),
                    )
                  ],
                ));
      },
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Question 1'),
          backgroundColor: Colors.green,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: data.size.height / 5.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(0.0)),
                      color: Colors.green),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 15.0, right: 5.0),
                      margin: EdgeInsets.only(top: 10.0),
                      width: data.size.width,
                      child: RichText(
                        text: TextSpan(
                          text:
                              'A fraction simply tells us how many parts of a whole we have. You can recognize a fraction by the slash that is written between the two numbers. We have a top number, the numerator, and a bottom number, the denominator.',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(
                      top: 10.0,
                      bottom: 20.0,
                    ),
                    padding:
                        EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                    width: data.size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 30.0),
                            child: Center(
                              child: Text(
                                '60',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Choicebutton(),
                        Choicebutton(),
                        Choicebutton(),
                        Choicebutton(),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
