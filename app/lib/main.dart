import 'package:app/react.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'React',
      home: React(),
      color: Colors.blue,
    ));
}
