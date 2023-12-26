import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  final List<int> numbers = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Colors.lightBlue, 
      ),
      backgroundColor: Color.fromARGB(255, 119, 221, 241),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          String imagePath = 'assets/images/numbers/${numbers[index]}.png';
          String audioPath = 'assets/audio/numbers/${numbers[index]}.mp3';

          return GestureDetector(
            onTap: () {
              // audio
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imagePath,
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
