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

  Widget workExperienceCard(
      jobTitle, companyName, location, jobDescription, startDate, endDate, topPadding, leftPadding) {
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
                          companyName,
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
              if (constraints.maxWidth < 450) {
                return Column(
                  children: [
                    Container(
                      child: Card(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 10),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              workExperienceCard(
                                  "Software Developer",
                                  "Klokwork Shop Management",
                                  "Syracuse, NY",
                                  "* Implemented Stripe Payment, ACH Bank payment, affiliate program, and invoicing. \n* Optimized the backend code and database queries. Enhanced the user experience \n* Developed REST APIs and other various features on Web application designed on MVC pattern using CakePHP and Android App using Kotlin required for the Auto Shop management.",
                                  "Sep 2019",
                                  "Present", 0, 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 10),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              workExperienceCard(
                                  "Software Developer",
                                  "Promptous",
                                  "Syracuse, NY",
                                  "* Designing and Implementing a HIPAA compliant web application built using Angular and Spring Boot on the IBM cloud. \n* Implemented business logic for the application in Agile Methodology.",
                                  "Jul 2019",
                                  "Present", 0, 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 10),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              workExperienceCard(
                                  "Android Facilitator (Student Program)",
                                  "Google",
                                  "Bengaluru, India",
                                  "* Cover concepts from Computer Science & Android Development \n* Helping students to complete the units by troubleshooting bugs. \n* Organizing the logistics of running the program and promoting the program to find students.",
                                  "May 2016",
                                  "Jun 2017", 0, 0),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
              } else {
                return Card(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              cardHeader("Work Experience", Icons.work),
                              Container(
                                child: Column(
                                  children: [
                                    workExperienceCard(
                                        "Software Developer",
                                        "Klokwork Shop Management",
                                        "Syracuse, NY",
                                        "* Implemented Stripe Payment, ACH Bank payment, affiliate program, and invoicing. \n* Optimized the backend code and database queries. Enhanced the user experience \n* Developed REST APIs and other various features on Web application designed on MVC pattern using CakePHP and Android App using Kotlin required for the Auto Shop management.",
                                        "Sep 2019",
                                        "Present", 10, 32),
                                    Divider(color: Colors.black45),
                                    workExperienceCard(
                                        "Software Developer",
                                        "Promptous",
                                        "Syracuse, NY",
                                        "* Designing and Implementing a HIPAA compliant web application built using Angular and Spring Boot on the IBM cloud. \n* Implemented business logic for the application in Agile Methodology.",
                                        "Jul 2019",
                                        "Present", 10, 32),
                                    Divider(color: Colors.black45),
                                    workExperienceCard(
                                        "Android Facilitator (Student Program)",
                                        "Google",
                                        "Bengaluru, India",
                                        "* Cover concepts from Computer Science & Android Development \n* Helping students to complete the units by troubleshooting bugs. \n* Organizing the logistics of running the program and promoting the program to find students.",
                                        "May 2016",
                                        "Jun 2017", 10, 32),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
