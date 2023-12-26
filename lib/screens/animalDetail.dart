import 'package:flutter/material.dart';
import 'package:kidsapp/models/animal.dart';

class AnimalDetailScreen extends StatelessWidget {
  final Animal animal;

  AnimalDetailScreen({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/animals/forest.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                animal.image,
                width: double.infinity,
                height: 300,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8), // Adjust opacity as needed
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description: ${animal.description}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Life Span: ${animal.lifeSpan}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Best Trait: ${animal.bestTrait}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
