import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  final List<int> numbers = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/classroom.jpg'), fit: BoxFit.fill),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            String imagePath = 'assets/images/numbers/${numbers[index]}.png';
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white54, 
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  imagePath,
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
