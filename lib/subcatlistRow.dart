import 'package:flutter/material.dart';
import 'package:mathapp/MyDrawer.dart';
import 'package:mathapp/subcatlistRow.dart';
import 'package:mathapp/SubListRowData.dart';
import 'package:mathapp/ChooseScreen.dart';

class SubListRow extends StatelessWidget{
  final Testbox testbox;
  SubListRow(this.testbox);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final data= MediaQuery.of(context);
    final planetCard = Container(
      child: Stack(
        children: <Widget>[
          Container(
            color: Color(testbox.color1),
            child: Text(testbox.id,style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(testbox.color1),



            ),),


          )


        ],
      ),
    );


  }



}
