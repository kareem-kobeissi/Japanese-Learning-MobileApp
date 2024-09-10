import 'package:flutter/material.dart';
import 'item.dart';
import 'number.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({ Key? key});
  final List<Item> colors = [
    Item(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burraku',
      enName: 'Black',
    ),


    Item(
      sound: 'brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
    ),


    Item(
      sound: 'gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gure',
      enName: 'Gray',
    ),

    Item(
      sound: 'red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
    ),

    Item(
      sound: 'green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
    ),

    Item(
      sound: 'yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
    ),
    Item(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'White',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Colors', style: TextStyle(color: Colors.white),),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context , index) {

            return ListItem(
              number: colors[index],
              color: Colors.purple,
              itemType: 'colors',
            );
          },
        )
    );
  }
}
