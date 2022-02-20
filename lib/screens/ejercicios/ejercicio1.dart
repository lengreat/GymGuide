import 'package:flutter/material.dart';
import 'package:gym_app/widgets/widgets.dart';

class Ejercicio1 extends StatelessWidget {
   
  const Ejercicio1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title:  const Text('Ejercicio 1'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children:  [
          
          CustomCardType1(
            titulo: const Text('''PULLOVER              
                '''),
            contenido:  textoContenido(),
            ),
          const SizedBox( height: 10 ),
          const CustomCardType2( imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Pullover_%28exercise%29_2_in_1.jpg', height: 600.0,),
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




