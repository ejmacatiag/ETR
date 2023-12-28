import 'package:flutter/material.dart';
import 'package:kidsapp/models/data.dart';
import 'package:kidsapp/screens/alphabetScreen.dart';
import 'package:kidsapp/screens/animalScreen.dart';
import 'package:kidsapp/screens/colorScreen.dart';
import 'package:kidsapp/screens/numberScreen.dart';
import 'package:kidsapp/screens/planetScreen.dart';
import 'package:kidsapp/screens/quizScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Kids Explorer'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.jpg'),fit: BoxFit.fill)
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: categoriesData.length,
          itemBuilder: (context, index) {
            CategoryData categoryData = categoriesData[index];

            return GestureDetector(
              onTap: () {
                if (categoryData.name == 'Animals') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimalsScreen(),
                    ),
                  );
                } else if (categoryData.name == 'Alphabet') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AlphabetScreen(),
                    ),
                  );
                } else if (categoryData.name == 'Numbers') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NumbersScreen(),
                    ),
                  );
                } else if (categoryData.name == 'Colors') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColorsScreen()),
                  );
                } else if (categoryData.name == 'Solar System') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlanetsScreen()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            categoryData.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            categoryData.name,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
