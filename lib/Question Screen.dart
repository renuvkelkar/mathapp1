import 'dart:async';
import 'dart:convert';


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
          return Scaffold
            (
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

  quizpage({Key key, @required this.mydata}) : super(key: key);

  @override
  _quizpageState createState() => _quizpageState(mydata);
}

class _quizpageState extends State<quizpage> {
  var mydata;
  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i;

  Map<String, Color> btncolor = {
    "a": Colors.deepOrange,
    "b": Colors.deepOrange,
    "c": Colors.deepOrange,
    "d": Colors.deepOrange,
  };

  _quizpageState(this.mydata);


  void nextquestion() {
    setState(() {
      if (i < 5) {
        i++;
      } else {
        btncolor["a"] = Colors.deepOrange;
        btncolor["b"] = Colors.deepOrange;
        btncolor["c"] = Colors.deepOrange;
        btncolor["d"] = Colors.deepOrange;
      }
    });
  }

  void checkanswer(String k) {
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      marks = marks + 1;
      colortoshow = right;
    } else {
      colortoshow = wrong;
    }
    setState(() {
      // applying the changed color to the particular button that was selected
      btncolor[k] = colortoshow;
    });
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget Choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1]["i.toString()"][k],
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
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
                          mydata[0]["i.toString()"],
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
                        Choicebutton('a'),
                        Choicebutton('b'),
                        Choicebutton('c'),
                        Choicebutton('d'),
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
