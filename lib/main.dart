import 'package:flutter/material.dart';
import 'package:mathapp/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        resizeToAvoidBottomPadding: false,

     body:
     Stack(
       children: <Widget>[
         Container(

           decoration: new BoxDecoration(
             color: Colors.green,
             image: new DecorationImage(
               image: new ExactAssetImage('assets/images/login_screen_back.png'),
               fit: BoxFit.cover,
             ),
           ),
         ),
         Column(
           children: <Widget>[
             HomePage(),
           ],

         )

       ],

     )






      )   );
  }
}
