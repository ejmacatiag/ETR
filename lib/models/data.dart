class CategoryData {
  final String name;
  final String image;


  CategoryData({
    required this.name,
    required this.image,
  });
}


final List<CategoryData> categoriesData = [
  CategoryData(
    name: 'Animals',
    image: 'assets/images/animals.png',
    
  ),
  CategoryData(
    name: 'Alphabet',
    image: 'assets/images/Alphabet.jpg',
    
  ),
  CategoryData(
    name: 'Numbers',
    image: 'assets/images/no.1.png',
  ),
  CategoryData(
    name: 'Colors',
    image: 'assets/images/colors.png',
  ),
  CategoryData(
    name: 'Solar System',
    image: 'assets/images/Planets.png',
  ),
  CategoryData(
    name: 'Quiz',
    image: 'assets/images/quiz.png',
  ),
];
