import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EducationFragment extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Education"),
      ),
      body: new Text(
         "Education"
      )
    );
  }
}