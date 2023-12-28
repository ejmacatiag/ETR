import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kidsapp/models/quiz.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Entity> quizEntities;
  late Entity correctEntity;
  int currentQuestion = 1;
  final int totalQuestions = 10;
  int score = 0;

  @override
  void initState() {
    super.initState();
    loadNextQuestion();
  }

  void loadNextQuestion() {
    List<Entity> allEntities = Entity.getAllEntities()..shuffle();
    quizEntities = List<Entity>.generate(
      4,
      (index) => allEntities[index],
    )..shuffle();
    correctEntity = quizEntities[Random().nextInt(4)];
  }

  void answer(Entity selectedEntity) {
    if (selectedEntity == correctEntity) {
      setState(() {
        score++;
      });
    }
    if (currentQuestion < totalQuestions) {
      setState(() {
        currentQuestion++;
        loadNextQuestion();
      });
    } else {
      showFinalScoreDialog();
    }
  }

  void showFinalScoreDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Quiz Completed'),
          content: Text('Your final score: $score/$totalQuestions'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestion = 1;
                  score = 0;
                  loadNextQuestion();
                });
              },
              child: Text('Start Over'),
            ),
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Go Home'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/classroom.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Text(
                      'Question $currentQuestion/$totalQuestions',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Gap(20),
                    Text('What is the name of the image', style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  correctEntity.image,
                  height: 200,
                  width: 200,
                ),
              ),
              ...quizEntities.map((entity) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => answer(entity),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Color.fromARGB(1, 1, 1, 1)
                    ),
                    child: Text(entity.name),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
