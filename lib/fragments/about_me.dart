import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AboutMeFragment extends StatelessWidget {
  Widget CardHeader(cardTitle, iconName) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            iconName,
            color: Colors.red[800],
          ),
        ),
        Align(
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
      ],
    );
  }

  Widget socialMediaProfile(fileName) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "images/socialmedia/" + fileName,
                height: 50,
                width: 50,
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Madhu Jayarama",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoSlab',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "(a.k.a Madhu Gowda, Best Gamer)",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontFamily: 'RobotoSlab',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 500) {
                return Card(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CardHeader("Skills", Icons.bubble_chart),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Front End:",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Angular, Flutter, Bootstrap",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Back End:",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "CakePHP, Spring Boot, Node.js",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Mobile:",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Android",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Database:",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoSlab',
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
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 32),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "MySQL, MS SQL Server, MongoDB, Firebase",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                        fontFamily: 'RobotoSlab',
                                      ),
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
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Build Tools:",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Maven, Gradle",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Version Control:",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Git",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: 'RobotoSlab',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Card(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CardHeader("Skills", Icons.bubble_chart),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 32),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Front End:",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'RobotoSlab',
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
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 32),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Angular, Flutter, Bootstrap",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87,
                                                    fontFamily: 'RobotoSlab',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 32),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Back End:",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'RobotoSlab',
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
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 32),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "CakePHP, Spring Boot, Node.js",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87,
                                                    fontFamily: 'RobotoSlab',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 32),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Mobile:",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'RobotoSlab',
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
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 32),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Android",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87,
                                                    fontFamily: 'RobotoSlab',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 32),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Database:",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'RobotoSlab',
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
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 32),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "MySQL, MS SQL Server, MongoDB, Firebase",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87,
                                                    fontFamily: 'RobotoSlab',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 32),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Build Tools:",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'RobotoSlab',
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
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 32),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Maven, Gradle",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87,
                                                    fontFamily: 'RobotoSlab',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 32),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Version Control:",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'RobotoSlab',
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
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 32),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Git",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87,
                                                    fontFamily: 'RobotoSlab',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            }),
            Card(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 10),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CardHeader("Social Media Profiles", Icons.bubble_chart),
                    Container(
                      padding: EdgeInsets.only(
                          left: 32, right: 20, top: 20, bottom: 10),
                      child: Row(
                        children: [
                          socialMediaProfile("linkedIn.png"),
                          socialMediaProfile("stackoverflow.png"),
                          socialMediaProfile("github.png"),
                          socialMediaProfile("instagram.png"),
                          socialMediaProfile("facebook.png"),
                          socialMediaProfile("twitter.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}