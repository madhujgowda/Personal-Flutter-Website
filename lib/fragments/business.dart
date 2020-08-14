import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BusinessFragment extends StatelessWidget {
  Widget cardHeader(cardTitle, iconName) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            iconName,
            color: Colors.red[800],
          ),
        ),
        Container(
          child: Flexible(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red[800],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoSlab',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget educationCard(school, degree, fieldOfStudy, startYear, endYear) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Flexible(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          school,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoSlab',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              child: Flexible(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          degree + " in " + fieldOfStudy,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            fontFamily: 'RobotoSlab',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              child: Flexible(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          startYear.toString() + " - " + endYear.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            fontFamily: 'RobotoSlab',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Website under build... Please check back later... "),
      ),
    );
  }
}
