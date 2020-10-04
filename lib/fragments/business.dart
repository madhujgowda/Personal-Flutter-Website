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

  Widget businessCard(companyName, location, startDate, endDate, topPadding, leftPadding) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Flexible(
                child: Container(
                  padding: EdgeInsets.only(top: topPadding, left: leftPadding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          companyName,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red[800],
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
                  padding: EdgeInsets.only(top: 10, left: leftPadding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          location,
                          style: TextStyle(
                            fontSize: 15,
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
                  padding: EdgeInsets.only(top: 10, left: leftPadding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          startDate + " - " + endDate,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black45,
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 450) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                cardHeader("Business", Icons.monetization_on),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [

                  ],
                );
              }
            }),
            Container(
              child: Card(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      businessCard(
                          "DeftSync LLC",
                          "Syracuse, NY",
                          "Aug 2020",
                          "Present",
                          0,
                          0),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Card(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      businessCard(
                          "Soft Mach Techno Pvt LTD",
                          "Bengaluru, India",
                          "Oct 2020",
                          "Present",
                          0,
                          0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
