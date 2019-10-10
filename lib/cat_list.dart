import 'package:flutter/material.dart';
import 'package:mathapp/CatRow.dart';
import 'package:mathapp/CatRow1.dart';
import 'package:mathapp/CatRow2.dart';
import 'package:mathapp/CatRow3.dart';
import 'package:mathapp/CatRow4.dart';
import 'package:mathapp/CatRow5.dart';
import 'package:mathapp/CatRow6.dart';
import 'package:mathapp/CatRow7.dart';
import 'package:mathapp/MyDrawer.dart';
import 'package:mathapp/main_login.dart';
class Category_list extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final data= MediaQuery.of(context);
    return Scaffold(
      appBar: new AppBar(
        title:  Text('Fractions'),

        backgroundColor: Colors.green,
        elevation: 0.0,


      ),
      endDrawer: MyDrawer(),


      body: ListView(
        children: <Widget>[
          Stack(


            children: <Widget>[
              Container(
                height: data.size.height/5.8,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0),bottomLeft: Radius.circular(0.0)),
                    color: Colors.green),





              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15.0,right: 5.0),
                    width: data.size.height/3,
                    child: RichText(
                      text: TextSpan(
                        text: 'A fraction simply tells us how many parts of a whole we have. You can recognize a fraction by the slash that is written between the two numbers. We have a top number, the numerator, and a bottom number, the denominator.',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),

                ),
                    ),
                  ),
                  Container(


                    margin: EdgeInsets.only(left: 0.0,top: 17.0),

                    height: 120.0,
                    width: 133.0,
                    decoration: BoxDecoration(

                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/top_lady_back.png'),
                        fit: BoxFit.cover,
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
                  margin: EdgeInsets.only(top:10.0),
                  padding: EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),


                  width: data.size.width,

                  child:Column(



                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CategoryRow(),
                          CategoryRow1(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CategoryRow2(),
                          CategoryRow3(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CategoryRow4(),
                          CategoryRow5(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CategoryRow6(),
                          CategoryRow7(),
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