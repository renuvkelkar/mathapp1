import 'package:flutter/material.dart';
import 'package:mathapp/ChooseLevel.dart';

import 'package:mathapp/SubListRowData.dart';


class SubListRow extends StatelessWidget{
  final Testbox testbox;
  SubListRow(this.testbox);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final data= MediaQuery.of(context);
    return Container(
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => chooseLevel()

              )
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 150.0,
              width: data.size.width / 2,
              color: Color(0xFFEBB713),
              child: Text(
                testbox.id,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: (Colors.white),
                ),
              ),


            ),
          ),

          Container(
            height: 40.0,
            alignment: Alignment.center,
            color: Colors.grey,
            child: Text(
              testbox.name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: (Colors.white),
              ),
            ),
          )


        ],
      ),
    );


  }



}
