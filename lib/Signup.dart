import 'package:flutter/material.dart';
import 'package:mathapp/cat_list.dart';
import 'package:mathapp/main_login.dart';
class account_signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final data= MediaQuery.of(context);
    return Scaffold(
      appBar: new AppBar(

        backgroundColor: Colors.green,
        elevation: 0.0,


      ),


      body: ListView(
        children: <Widget>[
          Image.asset('assets/images/top_back.png',

            fit: BoxFit.cover,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top:30.0),
                  padding: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),

                  height: data.size.height/1.2,
                  width: data.size.width,

                  child:Column(



                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[

                          Container
                            (

                              child: Text("Parent login",

                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green


                                ),


                              )
                          ),

                        ],
                      ),

                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Parent Name',
                            labelStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,


                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )

                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Parrent Email',
                            labelStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,


                            ),

                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )

                        ),
                        obscureText: true,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Name of the Child',
                            labelStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,


                            ),

                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )

                        ),
                        obscureText: true,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Age',
                            labelStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,


                            ),

                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )

                        ),
                        obscureText: true,
                      ),

                      Container(
                        margin: EdgeInsets.only(top:20.0),
                        alignment: Alignment.topLeft,

                        child: Text('Select Avatar',
                         style: TextStyle(
                         fontSize: 15.0,

                          color: Colors.grey,



    ),
                        ),

                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 20.0,right: 10.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/images/avatar1.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0,right: 10.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/images/avatar3.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0,right: 10.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/images/avatar4.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0,right: 10.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/images/avatar2.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            margin: EdgeInsets.only(top:80.0),
                            child: SizedBox(
                              width: 200,
                              height: 50.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.black12,
                                color: Colors.green,
                                elevation: 7.0,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute (
                                          builder:(context)=>Category_list()

                                      )
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Signup',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,



                                        ),
                                      ),
                                    )
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[


                        ],
                      ),










                    ],
                  )



              ),

            ],
          )






        ],
      ),
    );
  }

}