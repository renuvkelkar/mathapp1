import 'package:flutter/material.dart';

class Testbox {
  final String id;
  final String name;
  final String image;
  final int color1;
  final int color2;
  final String percentage;

  const Testbox({this.id, this.name,  this.image, this.color1 , this.color2 ,this.percentage});
}
List<Testbox> testboxs = [
  const Testbox(
    id: "1",
    name: "Mars",
    color1: 0xFF00a885,

  ),

  const Testbox(
    id: "2",
    name: "2dShapes",
    color1: 0xFFfeff218,
),
  const Testbox(
    id: "3",
    name: "Numbers",
    color1: 0xFFeb6b56,
  ),
  const Testbox(
    id: "4",
    name: "Mars",
    color1: 0xFF00a885,

  ),

  const Testbox(
    id: "5",
    name: "2dShapes",
    color1: 0xFFfeff218,
  ),
  const Testbox(
    id: "6",
    name: "Numbers",
    color1: 0xFFeb6b56,
  ),

  const Testbox(
    id: "7",
    name: "Mars",
    color1: 0xFF00a885,

  ),

  const Testbox(
    id: "8",
    name: "2dShapes",
    color1: 0xFFfeff218,
  ),
  const Testbox(
    id: "9",
    name: "Numbers",
    color1: 0xFFeb6b56,
  ),
];