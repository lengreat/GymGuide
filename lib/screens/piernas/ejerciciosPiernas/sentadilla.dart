import 'package:flutter/material.dart';
//import 'package:gym_app/widgets/photo_hero.dart';
import 'package:gym_app/widgets/widgets.dart';

class Sentadilla extends StatelessWidget {
   
  const Sentadilla({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title:  const  Text('GRUPO PIERNAS'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children:  [
          //textoContenido(),
           CustomCardType1(
            titulo: const Text('''SENTADILLA               
                '''),
            contenido: textoContenido(),
            ),
          const SizedBox( height: 10 ),

          const CustomCardType2( imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/46/Squat.png', height: 700.0,),

        ],
      )
    
    );
  }

  Text textoContenido() {
    return  const Text(
              'Ad et cillum incididunt duis Lorem consectetur dolor ex irure consectetur do velit enim eiusmod. Mollit aliquip amet amet elit deserunt ex incididunt magna laboris.'+
              'Ad et cillum incididunt duis Lorem consectetur dolor ex irure consectetur do velit enim eiusmod. Mollit aliquip amet amet elit deserunt ex incididunt magna laboris.',

              textAlign: TextAlign.justify,);
        
  }

  
}



