import 'package:flutter/material.dart';

class WorkExperienceFragment extends StatelessWidget {
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

  Widget workExperienceCard(jobTitle, companyName, location, jobDescription,
      startDate, endDate, topPadding, leftPadding) {
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
                          jobTitle,
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
                  padding: EdgeInsets.only(top: 10, left: leftPadding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          companyName + " - " + location,
                          style: TextStyle(
                            fontSize: 15,
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
                          jobDescription,
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
                                cardHeader("Work Experience", Icons.work),
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
                      workExperienceCard(
                          "Full Stack Software Developer ",
                          "Promptous",
                          "Syracuse, NY",
                          "* Designing and Implementing a HIPAA compliant web application built using Angular 9, Spring Boot, Hibernate, and PostgreSQL.\n* Implemented REST APIs for the business logic in Agile Methodology while enhancing the backend performance by 15%.\n* Worked on Liquibase, CI/CD, Kubernetes on IBM cloud.",
                          "Jul 2019",
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
                      workExperienceCard(
                          "Full Stack Software Developer ",
                          "Klokwork Shop Management",
                          "Syracuse, NY",
                          "* Implemented Stripe Payment, ACH Bank payment, QuickBooks, affiliate program and invoicing to gain 14% more revenue.\n* Optimized the backend code and database queries by increasing the performance by 40%.\n* Developed REST APIs and other various features on Web application designed on MVC pattern using CakePHP. \n* Implemented Object Storage S3 and other features on Android App using Kotlin required for the Auto Shop management.\n* Enhanced the User Interface and User Experience.",
                          "Sep 2019",
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
                      workExperienceCard(
                          "Android Facilitator - Student Program",
                          "Google",
                          "Bengaluru, India",
                          "Google Applied CS with Android program is designed for students who are looking for a project-based learning environment to improve their coding skills.\n* Covered concepts from Data Structures, Algorithms, and Android Development to around 120 students.* Helping them to complete the units by troubleshooting bugs and implement features.\n* Organized the logistics of running the program and promoting the program to increase the reach by 35%.\n* As one of the judging members for ‘Google India Code to Learn Contest 2016’, analyzed the application code and functionalities of around 25 submissions.\n* Attended workshops and design sprints at Google office. ",
                          "May 2016",
                          "Jun 2017",
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
