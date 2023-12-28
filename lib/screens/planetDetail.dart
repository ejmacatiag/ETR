import 'package:flutter/material.dart';
import 'package:kidsapp/models/planet.dart';

class PlanetDetailScreen extends StatelessWidget {
  final Planet planet;

  PlanetDetailScreen({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/planets/space.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    planet.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
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
                      'Description: ${planet.description}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Size: ${planet.size}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Unique Feature: ${planet.uniqueFeature}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Next Planet: ${planet.nextPlanet}',
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
