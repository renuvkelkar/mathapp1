import 'package:flutter/material.dart';

import 'package:mathapp/main_login.dart';

class LoginPage extends StatelessWidget{
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
                padding: EdgeInsets.only(top: 20.0),

                height: data.size.height/1.6,
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

                            child: Text("Success to 11 + Maths",

                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white


                              ),


                            )
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
                             color: Colors.white,
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
                     ],
                   ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container
                          ( margin: EdgeInsets.only(top:40.0),

                            child: Text("OR",

                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white


                              ),


                            )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(

                          margin: EdgeInsets.only(top:30.0),
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
                                        builder:(context)=>MainLogin()

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