import 'package:flutter/material.dart';

Widget figureImage(bool visible, String path){
  return Visibility(
    visible:visible,
      child: Container(
        height: 350,
        width: 350,
        child: Image.asset(path),
      ));
}
