import 'package:flutter/material.dart';

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
          Container(
            alignment: Alignment.center,
            height: 150.0,
            width: data.size.width / 2,
            color: Color(testbox.color1),
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
