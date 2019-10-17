import 'package:flutter/material.dart';
import 'package:mathapp/ChooseScreen.dart';
import 'sub_page.dart';
import 'list_data.dart';
import 'dart:math';
class PlanetRow extends StatelessWidget{
  final Planet planet;
  PlanetRow(this.planet);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final data= MediaQuery.of(context);
    final planetCard = Container(
      child: Stack(
        children: <Widget>[
      GestureDetector(

        onTap: () {
          Navigator.push(context, MaterialPageRoute (
              builder:(context)=>chooseScreen()

          )
          );
        },child:Container(
          height: 50.0,
          width: data.size.width/1.5,

          alignment: Alignment.center,

          child: Text( planet.name,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,



            ),
          ),
          margin: new EdgeInsets.only(left: 0.0),
          decoration: new BoxDecoration(
            color: Color(planet.color1),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0),bottomLeft: Radius.circular(10.0),topLeft:Radius.circular(10.0),topRight: Radius.circular(10.0), ),
            shape: BoxShape.rectangle,


          )

      ) ,


      ),


        ],
      ),
    );
    final planetThumbnail = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Stack(
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(top: 0.0,left:0.0),
                  height: 50.0,
                  width: 50.0,

                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Transform.rotate(
                  angle:pi/4,
                  origin: Offset(0.0, 00.0),
                  child:Container(
                    margin: EdgeInsets.only(top: 0.0,left:30.0),

                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),


                  ),


                ),
                Container(
                  alignment: Alignment.center,

                  width: 50.0,
                  height: 50.0,

                  child: Text(planet.id,style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(planet.color1),



                  ),),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topLeft:Radius.circular(10.0), ),
                      shape: BoxShape.rectangle,


                    )

                ),
              ],
            )

          ],
        )


      ],
    );
    final percentage_box = Container(
      child: Stack(
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(top: 0.0,left:12.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: Color(planet.color1),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0),bottomLeft:Radius.circular(10.0), ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0.0,left:12.0),
            height: 35.0,
            width: 50.0,
            padding: EdgeInsets.all(9.0),
            child: Text(planet.percentage,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,



              ),),
            decoration: BoxDecoration(
                color: Color(planet.color2)
            ),
          )
        ],
      ),


    );
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 10.0,left: 20.0),
      child: Row(

        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  planetCard,
                  planetThumbnail,

                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              percentage_box,
            ],
          )



        ],
      ),


    );
  }



}
