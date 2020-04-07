import 'package:flutter/material.dart';

class Car {
  String name;
  String image;
  Color color;
  Car({
    this.name, 
    this.image,
    this.color
  });

void setAll(String name, String image,Color color){
  this.name = name; 
  this.image = image;
  this.color = color;
}
  void setName(String name) {
    this.name = name;
  }

  void setImage(String image) {
    this.image = image;
  }
  void setColor(Color color){
    this.color = color;

  }

  String getName() {
    return name;
  }
  String getImage() {
    return image;
  }
  Color getColor(){
    return color;
  }
}
