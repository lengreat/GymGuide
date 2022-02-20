import 'package:flutter/material.dart';
import 'package:gym_app/widgets/widgets.dart';

class AbsRec extends StatelessWidget {
   
  const AbsRec({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title:  const Text('Abdominales recostado'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children:  [
          
          CustomCardType1(
            titulo: const Text('''FLEXION ABDOMINAL              
                '''),
            contenido:  textoContenido(),
            ),
          const SizedBox( height: 10 ),
          //const CustomCardType2( imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Pullover_%28exercise%29_2_in_1.jpg', height: 600.0,),
           const AssetCard(image: 'assets/abs_rec.jpg',),
        ],
      )
    
    );
  }
  Text textoContenido() {
    return  const Text(
'Acuéstese boca arriba con las rodillas dobladas y los pies firmemente en el suelo. '
'Apriete los músculos abdominales y atráigalos hacia la columna. Mantenga esto durante todo el movimiento del ejercicio. '
'Tense los abdominales para levantar y curvar los hombros y el pecho hacia las rodillas. '
'Asegúrese de que la espalda baja se mantenga en contacto con la colchoneta. '
'Baje de vuelta al principio.',
              textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0) ,);
        
  }
}




