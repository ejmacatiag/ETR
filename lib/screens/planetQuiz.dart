import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kidsapp/models/planet.dart';

class PlanetQuiz extends StatefulWidget {
  @override
  _PlanetQuizState createState() => _PlanetQuizState();
}

class _PlanetQuizState extends State<PlanetQuiz> {
  List<Planet> planets = Planet.getAllPlanets();
  int score = 0;
  int questionNumber = 0;
  Planet? currentQuestion;
  List<String> currentChoices = [];

  @override
  void initState() {
    super.initState();
    getNextQuestion();
  }

  void getNextQuestion() {
    setState(() {
      if (questionNumber < 5) {
        currentQuestion = planets.isNotEmpty ? planets.removeAt(0) : null;
        currentChoices = generateRandomChoices(currentQuestion?.name);
        questionNumber++;
      } else {
        // Display the score when all questions are answered
        showScoreDialog();
      }
    });
  }

  List<String> generateRandomChoices(String? correctAnswer) {
    List<String> choices = [correctAnswer ?? ''];

    while (choices.length < 4) {
      var randomPlanet = planets[DateTime.now().millisecond % planets.length];

      if (!choices.contains(randomPlanet.name)) {
        choices.add(randomPlanet.name);
      }
    }

    choices.shuffle();
    return choices;
  }

  void checkAnswer(String selectedChoice) {
    if (currentQuestion != null) {
      bool isCorrect = selectedChoice == currentQuestion!.name;

      setState(() {
        if (isCorrect) {
          score++;
        }
      });

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(isCorrect ? 'Correct!' : 'Incorrect!'),
            content: Text('The answer is ${currentQuestion!.name}.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  getNextQuestion();
                },
                child: Text('Next Question'),
              ),
            ],
          );
        },
      );
    }
  }

  void showScoreDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Completed'),
          content: Text('Your Score: $score out of 5'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                restartQuiz();
              },
              child: Text('Start Over'),
            ),
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Go Back Home'),
            ),
          ],
        );
      },
    );
  }

  void restartQuiz() {
    setState(() {
      planets = Planet.getAllPlanets();
      score = 0;
      questionNumber = 0;
    });
    getNextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planet Quiz'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/planets/space2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (currentQuestion != null)
                Text(
                  'Question $questionNumber: What planet is shown?',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 20),
              if (currentQuestion != null)
                Image.asset(
                  currentQuestion!.image,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              Gap(50),
              if (currentQuestion != null)
                Column(
                  children: currentChoices.map((choice) {
                    return SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () => checkAnswer(choice),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(12.0),
                          ),
                          child: Text(choice),
                        ),
                      ),
                    );
                  }).toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
