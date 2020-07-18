import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AboutMeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Madhu Jayarama",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoSlab',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
