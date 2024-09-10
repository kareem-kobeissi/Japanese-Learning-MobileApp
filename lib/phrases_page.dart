import 'package:flutter/material.dart';
import 'item.dart';
import 'phrase.dart';
class PhrasesPage extends StatelessWidget {
   PhrasesPage({ Key? key});
  final List<Phrase> phrases =  [

    Phrase(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kodoku suru koto o wasurenaide kudasai',
      enName: 'Dont forget to subscribe',
    ),


    Phrase(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'I love Programming',
    ),


    Phrase(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
    ),

    Phrase(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
    ),

    Phrase(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'Yes I am coming',
    ),

    Phrase(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),

    Phrase(
      sound: 'what_is_your_name.wav',
      jpName: 'Anata no namae wa nanidesu ka',
      enName: 'What is your name',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Phrases', style: TextStyle(color: Colors.white),),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context , index) {
            return PhraseItem(
              phrase: phrases[index],
              color: Colors.blueAccent,
              itemType: 'phrases',
            );
          },
        )
    );
  }
}
