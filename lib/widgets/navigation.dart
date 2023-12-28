import 'package:flutter/material.dart';
import 'package:kidsapp/screens/alphabetScreen.dart';
import 'package:kidsapp/screens/animalScreen.dart';
import 'package:kidsapp/screens/colorScreen.dart';
import 'package:kidsapp/screens/homeScreen.dart';
import 'package:kidsapp/screens/numberScreen.dart';
import 'package:kidsapp/screens/planetScreen.dart';
import 'package:kidsapp/screens/quizScreen.dart';

class SideNav extends StatelessWidget {
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> categories = [
    'Home',
    'Alphabets',
    'Animals',
    'Colors',
    'Numbers',
    'Planets',
    'Quiz',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: scaffoldKey,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'E-Kids Explorer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          for (String category in categories)
            ListTile(
              title: Text(category),
              onTap: () {
                Navigator.pop(context);
                switch (category) {
                  case 'Animals':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalsScreen()));
                    break;
                  case 'Planets':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PlanetsScreen()));
                    break;
                  case 'Colors':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ColorsScreen()));
                    break;
                  case 'Numbers':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NumbersScreen()));
                    break;
                  case 'Quiz':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
                    break;
                  case 'Alphabets':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AlphabetScreen()));
                    break;
                  case 'Home':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    break;
                  default:
                    break;
                }
              },
            ),
        ],
      ),
    );
  }
}
