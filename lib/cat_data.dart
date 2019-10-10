import 'package:flutter/material.dart';
class category {
  final String id;
  final String name;
  final String image;
  final int color1;
  final int color2;


  const category({this.id, this.name,  this.image, this.color1 , this.color2 ,});
}
List<category> planets = [
const category(
id: "1",
name: "Data Handling",
color1: 0xFF00a885,
color2: 0xFF1abc9c,

image: "assets/images/icon1.png",
),

const category(
id: "2",
name: "Fractions",
color1: 0xFFfeff218,
color2: 0xFFece406,

image: "assets/images/2dshapes.png",
),
];
