class Entity {
  final String name;
  final String image;

  Entity({
    required this.name,
    required this.image,
  });
  
  static List<Entity> getAllEntities() {
    return [
      Entity(name: 'Lion', image: 'assets/images/animals/lion.png'),
      Entity(name: 'Elephant', image: 'assets/images/animals/elephant.png'),
      Entity(name: 'Bird', image: 'assets/images/animals/bluebird.png'),
      Entity(name: 'Deer', image: 'assets/images/animals/deer.png'),
      Entity(name: 'Dog', image: 'assets/images/animals/dog.png'),
      Entity(name: 'Fish', image: 'assets/images/animals/fish.png'),
      Entity(name: 'Giraffe', image: 'assets/images/animals/giraffee.png'),
      Entity(name: 'Tiger', image: 'assets/images/animals/tiger.png'),
      Entity(name: 'Rabbit', image: 'assets/images/animals/rabit.png'),
      Entity(name: 'Cat', image: 'assets/images/animals/cat.png'),
      Entity(name: 'Mercury', image: 'assets/images/planets/mercury.png'),
      Entity(name: 'Earth', image: 'assets/images/planets/earth.png'),
      Entity(name: 'Venus', image: 'assets/images/planets/venus.png'),
      Entity(name: 'Mars', image: 'assets/images/planets/mars.png'),
      Entity(name: 'Neptune', image: 'assets/images/planets/neptune.png'),
    ];
  }
}
