import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_card/icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar() {
    final snackBar1 = new SnackBar(
      content: new Text("mail id copied "),
      duration: new Duration(seconds: 2),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar1);
  }

  String _copy = "parasnirban9050@gmail.com";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/myimg.jpg'),
                  ),
                  Text(
                    'Paras Yadav',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade100,
                      fontSize: 15,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 150,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Card(
                    color: Colors
                        .white, // by default the color of Card widget is white so we can also remove it and nothing will change
                    margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal:
                            20), // Card widget can not use padding bcoz it's an inbuilt property
                    child: ListTile(
                      leading: Icon(
                        Icons.business_rounded,
                        color: Colors.teal,
                        size: 28,
                      ),
                      title: InkWell(
                        child: Text(
                          'IIIT Sonepat',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () => launch('http://www.iiitsonepat.ac.in/'),
                      ),
                      subtitle: Text(
                        "Student",
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail_outline,
                        color: Colors.teal,
                        size: 30,
                      ),
                      title: GestureDetector(
                        child: Text(
                          _copy,
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 19,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: _showSnackBar,
                        onLongPress: () {
                          Clipboard.setData(new ClipboardData(text: _copy));
                        },
                      ),
                    ),
                  ),
                  Card(
                    color: Colors
                        .white, // by default the color of Card widget is white so we can also remove it and nothing will change
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ), // Card widget can not use padding bcoz it's an inbuilt property
                    child: ListTile(
                      leading: Icon(
                        GitHubIcon.github_logo,
                        color: Colors.teal,
                        size: 35,
                      ),
                      title: InkWell(
                        child: Text(
                          'Checkout my Work',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 19,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () => launch('https://github.com/DaNnyKg07'),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors
                        .white, // by default the color of Card widget is white so we can also remove it and nothing will change
                    margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal:
                            20), // Card widget can not use padding bcoz it's an inbuilt property
                    child: ListTile(
                      leading: Icon(
                        LkdIn.lkdIn_logo,
                        color: Colors.teal,
                        size: 30,
                      ),
                      title: InkWell(
                        child: Text(
                          'Connect with Me',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 19,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () => launch(
                            'https://www.linkedin.com/in/paras-yadav-b753341aa/'),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors
                        .white, // by default the color of Card widget is white so we can also remove it and nothing will change
                    margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal:
                            20), // Card widget can not use padding bcoz it's an inbuilt property
                    child: ListTile(
                      leading: Icon(
                        Chef.codechef_logo,
                        color: Colors.teal,
                        size: 35,
                      ),
                      title: InkWell(
                        child: Text(
                          'Competetive Programming',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 19,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () =>
                            launch('https://www.codechef.com/users/paras_9050'),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors
                        .white, // by default the color of Card widget is white so we can also remove it and nothing will change
                    margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal:
                            20), // Card widget can not use padding bcoz it's an inbuilt property
                    child: ListTile(
                      leading: Icon(
                        Skills.skills_logo,
                        color: Colors.teal,
                        size: 30,
                      ),
                      title: Text(
                        'Programming Skills',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 19,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "C, C++, Python, Java, My SQL ",
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors
                        .white, // by default the color of Card widget is white so we can also remove it and nothing will change
                    margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal:
                            20), // Card widget can not use padding bcoz it's an inbuilt property
                    child: ListTile(
                      leading: Icon(
                        Project.project_logo,
                        color: Colors.teal,
                        size: 30,
                      ),
                      title: Text(
                        'Project Development',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 19,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Flutter Dev, Web Dev",
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
