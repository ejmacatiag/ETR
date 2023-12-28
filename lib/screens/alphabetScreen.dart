import 'package:flutter/material.dart';
import 'package:kidsapp/widgets/navigation.dart';

class AlphabetScreen extends StatelessWidget {
  final List<String> alphabet = List.generate(
      26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabet Letters'),
        centerTitle: true,
      ),
      drawer: SideNav(),
      backgroundColor: Colors.white,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: alphabet.length,
        itemBuilder: (context, index) {
          String imagePath =
              'assets/images/${alphabet[index].toLowerCase()}.jpg';
          return Padding(
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
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
