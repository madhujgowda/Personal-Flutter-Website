import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WorkExperienceFragment extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Work Experience"),
      ),
      body: new Text(
         "Work Experience"
      )
    );
  }
}