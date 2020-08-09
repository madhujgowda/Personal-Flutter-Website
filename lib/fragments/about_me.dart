import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Widget SkillHeader(fieldHeader) {
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

  Widget SkillBody(fieldBody) {
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
                        SkillHeader("Front End"),
                        SkillBody("Angular, Flutter, Bootstrap"),
                        SkillHeader("Back End"),
                        SkillBody("CakePHP, Spring Boot, Node.js"),
                        SkillHeader("Mobile"),
                        SkillBody("Android"),
                        SkillHeader("Database"),
                        SkillBody("MySQL, MS SQL Server, MongoDB, Firebase"),
                        SkillHeader("Build Tools"),
                        SkillBody("Maven, Gradle"),
                        SkillHeader("Version Control"),
                        SkillBody("Git"),
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
                                    SkillHeader("Front End"),
                                    SkillBody("Angular, Flutter, Bootstrap"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    SkillHeader("Back End"),
                                    SkillBody("CakePHP, Spring Boot, Node.js"),
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
                                    SkillHeader("Mobile"),
                                    SkillBody("Android"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    SkillHeader("Database"),
                                    SkillBody(
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
                                    SkillHeader("Build Tools"),
                                    SkillBody("Maven, Gradle"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    SkillHeader("Version Control"),
                                    SkillBody("Git"),
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

