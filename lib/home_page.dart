
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mathapp/login.dart';
class HomePage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(

      child: Column(
        children: <Widget>[
          Row(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Container(
                margin:EdgeInsets.only(top: 100.0),
                alignment: Alignment(0.0, 0.0),

                child:Text(
                  'success to 11+',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white


                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, 0.0),
                margin:EdgeInsets.symmetric(vertical: 30.0),

                child:Text(
                  'Maths',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white


                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            

            children: <Widget>[

              Expanded(
                

               child:Text(
                  'Welcome to Personalised Math App for your child',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white


                  ),
                ),
              ),

            ],
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             SizedBox(
               
               height: 100,
             ),
             SizedBox(
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
                           builder:(context)=>LoginPage()

                       )
                       );
                     },
                     child: Center(
                       child: Text(
                         'Start',
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
           ],
         )


        ],


      ),
    );
  }

}