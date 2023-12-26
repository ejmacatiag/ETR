class Animal {
  final String name;
  final String image;
  final String description;
  final String lifeSpan;
  final String bestTrait;

  Animal({
    required this.name,
    required this.image,
    required this.description,
    required this.lifeSpan,
    required this.bestTrait,
  });
  
  static List<Animal> getAllAnimals() {
    return [
      Animal(
        name: 'Lion',
        image: 'assets/images/animals/lion.png',
        description: 'The lion is a species in the family Felidae.',
        lifeSpan: '10-14 years',
        bestTrait: 'Strength and courage',
      ),
      Animal(
        name: 'Elephant',
        image: 'assets/images/animals/elephant.png',
        description: 'The elephant is the largest land animal.',
        lifeSpan: '60-70 years',
        bestTrait: 'Intelligence and memory',
      ),
      Animal(
        name: 'Bird',
        image: 'assets/images/animals/bluebird.png',
        description: 'Birds are a group of warm-blooded vertebrates constituting the class Aves.',
        lifeSpan: 'Varies by species',
        bestTrait: 'Flight and diverse beak adaptations',
      ),
      Animal(
      name: 'Cat',
      image: 'assets/images/animals/cat.png',
      description: 'Cats are small, carnivorous mammals that are often kept as pets.',
      lifeSpan: '12-15 years',
      bestTrait: 'Agility and independence',
      ),
      Animal(
        name: 'Deer',
        image: 'assets/images/animals/deer.png',
        description: 'Deer are hoofed ruminant mammals forming the family Cervidae.',
        lifeSpan: '6-14 years',
        bestTrait: 'Graceful and swift',
      ),
      Animal(
        name: 'Dog',
        image: 'assets/images/animals/dog.png',
        description: 'Dogs are domesticated mammals, not natural wild animals.',
        lifeSpan: '10-13 years',
        bestTrait: 'Loyalty and companionship',
      ),
      Animal(
        name: 'Fish',
        image: 'assets/images/animals/fish.png',
        description: 'Fish are aquatic animals with gills, fins, and scales.',
        lifeSpan: 'Varies by species',
        bestTrait: 'Diverse adaptations',
      ),
      Animal(
        name: 'Giraffe',
        image: 'assets/images/animals/giraffee.png',
        description: 'The giraffe is an African artiodactyl mammal, the tallest living terrestrial animal.',
        lifeSpan: '20-25 years',
        bestTrait: 'Long neck and legs',
      ),
      Animal(
        name: 'Rabbit',
        image: 'assets/images/animals/rabit.png',
        description: 'Rabbits are small mammals in the family Leporidae.',
        lifeSpan: '8-12 years',
        bestTrait: 'Rapid reproduction and agility',
      ),
      Animal(
        name: 'Tiger',
        image: 'assets/images/animals/tiger.png',
        description: 'The tiger is the largest cat species and a member of the genus Panthera.',
        lifeSpan: '8-10 years in the wild',
        bestTrait: 'Strength and agility',
      ),
    ];
  }
}
