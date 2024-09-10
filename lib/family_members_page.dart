import 'package:flutter/material.dart';

import 'item.dart';
import 'number.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({ Key? key});
  final List<Item> familyMembers = [
    Item(
      sound: 'father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
    ),


    Item(
      sound: 'daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),


    Item(
      sound: 'grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      enName: 'Grand Father',
    ),

    Item(
      sound: 'mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
    ),

    Item(
      sound: 'son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),

    Item(
      sound: 'older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older Brother',
    ),

    Item(
      sound: 'older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),
    Item(
      sound: 'younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Ototo',
      enName: 'Younger Brother',
    ),
    Item(
      sound: 'younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imoto',
      enName: 'Younger Sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Members', style: TextStyle(color: Colors.white),),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context , index) {

            return ListItem(
              number: familyMembers[index],
              color: Colors.green,
              itemType: 'family_members',
            );
          },
        )
    );
  }
}
