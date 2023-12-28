import 'package:flutter/material.dart';
import 'package:kidsapp/models/color.dart';

class ColorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rainbow Color List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ColorData.rainbowColors.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: ColorData.rainbowColors[index],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                contentPadding:
                    EdgeInsets.all(14.2),
                title: Text(
                  ColorData.colorNames[index],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
