import 'package:flutter/material.dart';
import 'package:kidsapp/models/planet.dart'; 
import 'package:kidsapp/screens/planetDetail.dart';


class PlanetsScreen extends StatelessWidget {
  final List<Planet> planets = Planet.getAllPlanets(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planets'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/planets/space.jpg'), // Replace with your actual background image path
            fit: BoxFit.fill,
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: planets.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanetDetailScreen(planet: planets[index]),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(20.0), 
                  ),
                  child: GridTile(
                    child: Image.asset(
                      planets[index].image,
                      fit: BoxFit.contain,
                    ),
                    footer: GridTileBar(
                      backgroundColor: Colors.black54,
                      title: Text(
                        planets[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
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
