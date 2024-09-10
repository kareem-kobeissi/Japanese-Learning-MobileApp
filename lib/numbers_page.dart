import 'package:flutter/material.dart';

import 'item.dart';
import 'number.dart';

class NumbersPage extends StatelessWidget {
   NumbersPage({ Key? key});

final List<Item> numbers = [
Item(
  sound: 'number_one_sound.mp3',
  image: 'assets/images/numbers/number_one.png',
  jpName: 'ichi',
  enName: 'one',
   ),


     Item(
       sound: 'number_two_sound.mp3',
   image: 'assets/images/numbers/number_two.png',
   jpName: 'Ni',
   enName: 'two',
   ),


  Item(
       sound: 'number_three_sound.mp3',
       image: 'assets/images/numbers/number_three.png',
   jpName: 'San',
   enName: 'three',
   ),

  Item(
       sound: 'number_four_sound.mp3',
       image: 'assets/images/numbers/number_four.png',
   jpName: 'Shi',
   enName: 'four',
   ),
  Item(
    sound: 'number_five_sound.mp3',
    image: 'assets/images/numbers/number_five.png',
    jpName: 'Go',
    enName: 'five',
  ),
  Item(
    sound: 'number_six_sound.mp3',
    image: 'assets/images/numbers/number_six.png',
    jpName: 'Roku',
    enName: 'six',
  ),
  Item(
    sound: 'number_seven_sound.mp3',
    image: 'assets/images/numbers/number_seven.png',
    jpName: 'Sebun',
    enName: 'seven',
  ),
  Item(
    sound: 'number_eight_sound.mp3',
    image: 'assets/images/numbers/number_eight.png',
    jpName: 'Hachi',
    enName: 'eight',
  ),
  Item(
    sound: 'number_nine_sound.mp3',
    image: 'assets/images/numbers/number_nine.png',
    jpName: 'Ku',
    enName: 'nine',
  ),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context , index) {

          return ListItem(
            itemType: 'numbers',
            number: numbers[index],
            color: Colors.orange,
          );
        },
      ),
      );
}

List<Item> getList (List<Item> numbers) {
  List<Item> itemsList = [];
  for(int i = 0 ; i<numbers.length ; i++)
    {
      itemsList.add(ListItem(
        itemType: 'numbers',
        number: numbers[i],
        color: Colors.orange,) as Item);
    }
  return itemsList;
}
}
