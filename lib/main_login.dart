import 'package:flutter/material.dart';
import 'package:mathapp/Signup.dart';
import 'package:mathapp/login.dart';

class MainLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final data= MediaQuery.of(context);
    return Scaffold(
      appBar: new AppBar(

        backgroundColor: Colors.white,
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

                  height: data.size.height/1.59,
                  width: data.size.width,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),topLeft: Radius.circular(40.0)),
                      color: Colors.green),
                  child:Column(



                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[

                          Container
                            (

                              child: Text("User login",

                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white


                                ),


                              )
                          ),

                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'USER NAME',
                            labelStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,


                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )

                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,


                            ),

                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )

                        ),
                        obscureText: true,
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
                                color: Colors.white,
                                elevation: 7.0,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute (
                                          builder:(context)=>account_signup()

                                      )
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Login',
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
                          Container(
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(right: 15.0,left: 10.0,top: 50.0),
                            height: 60.0,
                            padding: const EdgeInsets.all(2.0),


                            child: Text(
                                'Forgot Password',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(

                            margin: EdgeInsets.only(top:160.0),
                            child: SizedBox(
                              width: 150,
                              height: 50.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.black12,
                                color: Colors.blue,
                                elevation: 7.0,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute (
                                          builder:(context)=>MainLogin()

                                      )
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Facebook',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,



                                        ),
                                      ),
                                    )
                                ),
                              ),
                            ),
                          ),
                          Container(

                            margin: EdgeInsets.only(top:160.0),
                            child: SizedBox(
                              width: 150,
                              height: 50.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.white,
                                color: Colors.red,
                                elevation: 7.0,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute (
                                          builder:(context)=>account_signup()

                                      )
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Gmail',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,



                                        ),
                                      ),
                                    )
                                ),
                              ),
                            ),
                          ),
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