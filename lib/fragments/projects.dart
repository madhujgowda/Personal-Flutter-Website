import 'package:flutter/material.dart';

class ProjectsFragment extends StatelessWidget {
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

  Widget projectCard(projectTitle, projectDescription, projectUrl, startDate,
      endDate, projectTitleColor, topPadding, leftPadding) {
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
                          projectTitle,
                          style: TextStyle(
                            fontSize: 18,
                            color: projectTitleColor,
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
                          projectDescription,
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
                                cardHeader("Projects", Icons.developer_board),
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
                      projectCard(
                          "Three Player Tic Tac Toe Game with AI Agent ",
                          "• Evaluated the utility of each state and fed it to the neural network based on the trained model.\n• Used Min-Max tree search as a tree search algorithm.\n• Used ReLu and Sigmoid as the activation functions for the neural network model. ",
                          "",
                          "Oct 2019",
                          "Dec 2019",
                          Colors.red[800],
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
                      projectCard(
                          "YouTube Video Analyzer ",
                          "• Created a video scrapper from YouTube API. Used Punctuator2 to preprocess the data.\n• Use of natural language processing, text analysis, computational linguistics to find sentence level analysis and document level analysis.\n• Visualized the working in Express framework connected with MongoDB. ",
                          "",
                          "Jan 2019",
                          "Mar 2019",
                          Colors.red[800],
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
                      projectCard(
                          "Android App - 'Events & Party' ",
                          "• This app was developed as the final project for the course Android Programming where the users will be able to post the events and register for those events by searching them.\n• Tech: Spring Boot, Hibernate, Google Sign in for Authentication, Rest APIs, Android Jetpack, Android App Bundles and Firebase ",
                          "",
                          "Sep 2018",
                          "Dec 2018",
                          Colors.red[800],
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
                      projectCard(
                          "Smart Irrigation Monitoring System using Android App",
                          "This project was done in IEEE SS12 International Project Competition & Maker Fair 2017, it is an IoT project where temperature, humidity, and soil moisture can be viewed in real-time from an Android App and user can control the water pump from the distance area. ",
                          "",
                          "Sep 2017",
                          "Sep 2017",
                          Colors.red[800],
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
                      projectCard(
                          "Website for Efficient Information Management Using Data Integration System",
                          "Developed a web app using REST APIs using Spring Boot for the students, faculties and admin of the university can access important information with ease through a user-friendly Bootstrap ",
                          "",
                          "Apr 2018",
                          "Jun 2018",
                          Colors.red[800],
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
                      projectCard(
                          "Android App - ‘IRTEICT 2017’ ",
                          "Solved the problems for the authors to register for the conference and to notify the important conference dates to the user using Firebase Cloud Messaging. Used Spring REST for the backend.",
                          "",
                          "May 2017",
                          "May 2017",
                          Colors.red[800],
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
                      projectCard(
                          "Android App - ‘Kalaavaibhava 2k16’ ",
                          "Developed the interactive app to facilitate the students to browse about the events and respective winners for the college fest.",
                          "",
                          "Mar 2016",
                          "Mar 2016 ",
                          Colors.red[800],
                          0,
                          0),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
