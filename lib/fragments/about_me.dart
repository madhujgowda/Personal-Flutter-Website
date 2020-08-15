import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeFragment extends StatelessWidget {

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

  Widget skillHeader(fieldHeader) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10, left: 32),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              fieldHeader + ":",
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
    );
  }

  Widget skillBody(fieldBody) {
    return Row(
      children: [
        Container(
          child: Flexible(
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 32),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  fieldBody,
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
    );
  }

  Widget educationCard(school, place, degree, fieldOfStudy, startYear, endYear) {
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
                          startYear + " - " + endYear,
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

  Widget socialMediaProfile(fileName, url) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => {_launchURL(url)},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Image.asset(
                    "images/socialmedia/" +
                        fileName, // On click should redirect to an URL
                    width: 40,
                    height: 40,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
            Card(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 10),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    cardHeader("Skills", Icons.bubble_chart),
                    LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth < 500) {
                        return Container(
                          child: Column(
                            children: [
                              skillHeader("Front End"),
                              skillBody("Angular, Flutter, Bootstrap"),
                              skillHeader("Back End"),
                              skillBody("CakePHP, Spring Boot, Node.js"),
                              skillHeader("Mobile"),
                              skillBody("Android"),
                              skillHeader("Database"),
                              skillBody(
                                  "MySQL, MS SQL Server, MongoDB, Firebase"),
                              skillHeader("Build Tools"),
                              skillBody("Maven, Gradle"),
                              skillHeader("Version Control"),
                              skillBody("Git"),
                            ],
                          ),
                        );
                      } else {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          skillHeader("Front End"),
                                          skillBody(
                                              "Angular, Flutter, Bootstrap"),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          skillHeader("Back End"),
                                          skillBody(
                                              "CakePHP, Spring Boot, Node.js"),
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
                                          skillHeader("Mobile"),
                                          skillBody("Android"),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          skillHeader("Database"),
                                          skillBody(
                                              "MySQL, MS SQL Server, MongoDB, Firebase"),
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
                                          skillHeader("Build Tools"),
                                          skillBody("Maven, Gradle"),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          skillHeader("Version Control"),
                                          skillBody("Git"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    }),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 10),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    cardHeader("Education", Icons.school),
                    Container(
                      child: Column(
                        children: [
                          educationCard(
                              "Syracuse University",
                              "Syracuse, NY",
                              "Master of Science",
                              "Computer Science",
                              "2018",
                              "2020"),
                          educationCard(
                              "Visvesvaraya Technological University",
                              "Bengaluru, India",
                              "Bachelor of Engineering",
                              "Information Science",
                              "2013",
                              "2017"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 10),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    cardHeader("Social Media Profiles", Icons.person),
                    LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth < 500) {
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 32, right: 20, top: 20, bottom: 10),
                              child: Row(
                                children: [
                                  socialMediaProfile("linkedIn.png",
                                      "https://www.linkedin.com/in/madhujayarama/"),
                                  socialMediaProfile("googleplaystore.png",
                                      "https://play.google.com/store/apps/dev?id=8807932952586006668"),
                                  socialMediaProfile("stackoverflow.png",
                                      "https://stackoverflow.com/users/5935759/madhu-jayarama"),
                                  socialMediaProfile("github.png",
                                      "https://github.com/madhujgowda"),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 32, right: 20, top: 20, bottom: 10),
                              child: Row(
                                children: [
                                  socialMediaProfile("instagram.png",
                                      "https://www.instagram.com/madhugowda123/"),
                                  socialMediaProfile("facebook.png",
                                      "https://www.facebook.com/madhujgowdaofficial"),
                                  socialMediaProfile("twitter.png",
                                      "https://twitter.com/madhugowdaj"),
                                ],
                              ),
                            )
                          ],
                        );
                      } else {
                        return Container(
                          padding: EdgeInsets.only(
                              left: 32, right: 20, top: 20, bottom: 10),
                          child: Row(
                            children: [
                              socialMediaProfile("linkedIn.png",
                                  "https://www.linkedin.com/in/madhujayarama/"),
                              socialMediaProfile("googleplaystore.png",
                                  "https://play.google.com/store/apps/dev?id=8807932952586006668"),
                              socialMediaProfile("stackoverflow.png",
                                  "https://stackoverflow.com/users/5935759/madhu-jayarama"),
                              socialMediaProfile("github.png",
                                  "https://github.com/madhujgowda"),
                              socialMediaProfile("instagram.png",
                                  "https://www.instagram.com/madhugowda123/"),
                              socialMediaProfile("facebook.png",
                                  "https://www.facebook.com/madhujgowdaofficial"),
                              socialMediaProfile("twitter.png",
                                  "https://twitter.com/madhugowdaj"),
                            ],
                          ),
                        );
                      }
                    }),
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
