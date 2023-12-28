import 'package:flutter/material.dart';
import 'package:kidsapp/models/animal.dart';
import 'package:kidsapp/screens/animalDetail.dart';

class AnimalsScreen extends StatelessWidget {
  final List<Animal> animals = Animal.getAllAnimals();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animals'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/animals/forest.jpg'), // Replace with your actual background image path
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: animals.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AnimalDetailScreen(animal: animals[index]),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(15.0), 
                  ),
                  child: GridTile(
                    child: Image.asset(
                      animals[index].image,
                      fit: BoxFit.contain,
                    ),
                    footer: GridTileBar(
                      backgroundColor: Color.fromARGB(150, 0, 0, 0),
                      title: Text(
                        animals[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
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
