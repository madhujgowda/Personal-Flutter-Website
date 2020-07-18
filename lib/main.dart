import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Madhu/fragments/about_me.dart';
import 'package:Madhu/fragments/work_experience.dart';
import 'package:Madhu/fragments/education.dart';
import 'package:Madhu/fragments/projects.dart';
import 'package:Madhu/fragments/certificates.dart';
import 'package:Madhu/fragments/extra_curriculars.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const int _blackPrimaryValue = 0xFF000000;
    const MaterialColor primaryBlack = MaterialColor(
      _blackPrimaryValue,
      <int, Color>{
        50: Color(0xFF000000),
        100: Color(0xFF000000),
        200: Color(0xFF000000),
        300: Color(0xFF000000),
        400: Color(0xFF000000),
        500: Color(_blackPrimaryValue),
        600: Color(0xFF000000),
        700: Color(0xFF000000),
        800: Color(0xFF000000),
        900: Color(0xFF000000),
      },
    );
    return new MaterialApp(
      title: 'Madhu Jayarama',
      theme: ThemeData(
        primarySwatch: primaryBlack,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'RobotoSlab',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 1;
  double _screenSize = 0;
  String _appbarTitle = "About Me";

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 1:
        return new AboutMeFragment();
      case 2:
        return new WorkExperienceFragment();
      case 3:
        return new EducationFragment();
      case 4:
        return new ProjectsFragment();
      case 5:
        return new CertificatesFragment();
      case 6:
        return new ExtraCurricularsFragment();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
      switch (index) {
        case 1:
          _appbarTitle = "About Me";
          break;
        case 2:
          _appbarTitle = "Work Experience";
          break;
        case 3:
          _appbarTitle = "Education";
          break;
        case 4:
          _appbarTitle = "Projects";
          break;
        case 5:
          _appbarTitle = "Certificates";
          break;
        case 6:
          _appbarTitle = "Extra Curriculars";
          break;
      }
    });
    if (_screenSize < 600) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    var drawer = Drawer(
      elevation: 5,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 275,
            child: DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/profilePic.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Text(""),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'About Me',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
              ),
            ),
            selected: 1 == _selectedDrawerIndex,
            onTap: () => _onSelectItem(1),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text(
              'Work Experience',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
              ),
            ),
            selected: 2 == _selectedDrawerIndex,
            onTap: () => _onSelectItem(2),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text(
              'Education',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
              ),
            ),
            selected: 3 == _selectedDrawerIndex,
            onTap: () => _onSelectItem(3),
          ),
          ListTile(
            leading: Icon(Icons.developer_board),
            title: Text(
              'Projects',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
              ),
            ),
            selected: 4 == _selectedDrawerIndex,
            onTap: () => _onSelectItem(4),
          ),
          ListTile(
            leading: Icon(Icons.collections_bookmark),
            title: Text(
              'Certificates',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
              ),
            ),
            selected: 5 == _selectedDrawerIndex,
            onTap: () => _onSelectItem(5),
          ),
          ListTile(
            leading: Icon(Icons.directions_run),
            title: Text(
              'Extra Curriculars',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
              ),
            ),
            selected: 6 == _selectedDrawerIndex,
            onTap: () => _onSelectItem(6),
          ),
        ],
      ),
    );

    return LayoutBuilder(builder: (context, constraints) {
      _screenSize = constraints.maxWidth;
      if (constraints.maxWidth < 600) {
        return Scaffold(
          appBar: AppBar(
            title: Text(_appbarTitle),
          ),
          drawer: drawer,
          body: Container(
            child: _getDrawerItemWidget(_selectedDrawerIndex),
          ),
        );
      } else {
        return Scaffold(
          body: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                drawer,
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: _getDrawerItemWidget(_selectedDrawerIndex),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
