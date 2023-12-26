class Planet {
  final String name;
  final String image;
  final String description;
  final String size;
  final String uniqueFeature;
  final String nextPlanet; // Updated property

  Planet({
    required this.name,
    required this.image,
    required this.description,
    required this.size,
    required this.uniqueFeature,
    required this.nextPlanet,
  });

  static List<Planet> getAllPlanets() {
    return [
      Planet(
        name: 'Mercury',
        image: 'assets/images/planets/mercury.png',
        description: 'Mercury is the smallest planet in our solar system.',
        size: 'Small',
        uniqueFeature: 'Closest to the Sun',
        nextPlanet: 'Next planet: Venus',
      ),
      Planet(
        name: 'Venus',
        image: 'assets/images/planets/venus.png',
        description: 'Venus is the hottest planet in our solar system.',
        size: 'Medium',
        uniqueFeature: 'Thick atmosphere of clouds',
        nextPlanet: 'Next planet: Earth',
      ),
      Planet(
        name: 'Earth',
        image: 'assets/images/planets/earth.png',
        description: 'Earth is the only known planet to support life.',
        size: 'Medium',
        uniqueFeature: 'Abundance of liquid water',
        nextPlanet: 'Next planet: Mars',
      ),
      Planet(
        name: 'Mars',
        image: 'assets/images/planets/mars.png',
        description: 'Mars is often called the Red Planet due to its appearance.',
        size: 'Medium',
        uniqueFeature: 'Reddish surface and iron-rich soil',
        nextPlanet: 'Next planet: Jupiter',
      ),
      Planet(
        name: 'Jupiter',
        image: 'assets/images/planets/jupiter.png',
        description: 'Jupiter is the largest planet in our solar system.',
        size: 'Large',
        uniqueFeature: 'Great Red Spot and strong magnetic field',
        nextPlanet: 'Next planet: Saturn',
      ),
      Planet(
        name: 'Saturn',
        image: 'assets/images/planets/saturn.png',
        description: 'Saturn is known for its stunning ring system.',
        size: 'Large',
        uniqueFeature: 'Prominent ring system',
        nextPlanet: 'Next planet: Uranus',
      ),
      Planet(
        name: 'Uranus',
        image: 'assets/images/planets/uranus.png',
        description: 'Uranus is unique for its tilted rotational axis.',
        size: 'Medium',
        uniqueFeature: 'Tilted on its side',
        nextPlanet: 'Next planet: Neptune',
      ),
      Planet(
        name: 'Neptune',
        image: 'assets/images/planets/neptune.png',
        description: 'Neptune is the farthest planet from the Sun.',
        size: 'Medium',
        uniqueFeature: 'Blue color and strong winds',
        nextPlanet: 'Next planet: N/A (Last planet)',
      ),
      Planet(
        name: 'Moon',
        image: 'assets/images/planets/moon.png',
        description: 'The Moon is Earth\'s only natural satellite.',
        size: 'Small',
        uniqueFeature: 'Reflects sunlight, causing moon phases',
        nextPlanet: 'Next planet: N/A (Orbits Earth)',
      ),
      Planet(
        name: 'Sun',
        image: 'assets/images/planets/sun.png',
        description: 'The Sun is the star at the center of our solar system.',
        size: 'Very Large',
        uniqueFeature: 'Source of light and heat for the solar system',
        nextPlanet: 'Next planet: Mercury',
      ),
    ];
  }
}
