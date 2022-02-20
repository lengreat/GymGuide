import 'package:flutter/material.dart';
import 'package:gym_app/widgets/widgets.dart';

class Dominada extends StatelessWidget {
   
  const Dominada({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title:  const Text('Dominada'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children:  [
          
          CustomCardType1(
            titulo: const Text('''DOMINADA             
                '''),
            contenido:  textoContenido(),
            ),
          const SizedBox( height: 10 ),
          const CustomCardType2( imageUrl: 'https://www.entrenamientos.com/media/cache/exercise_375/uploads/exercise/dominadas-2590%20.png', height: 600.0,),
        ],
      )
    
    );
  }
  Text textoContenido() {
    return  const Text(
     'Dominada prona: con el agarre prono las palmas de las manos deben mirar hacia adelante. La anchura del agarre debe de ser como máximo 1,5 veces el ancho biacromial, es decir, el ancho de los hombros. El movimiento comienza tirando con los dorsales y no con los bíceps, si además al hacer esto se saca pecho, se reducirá drásticamente el estrés de los hombros. Cuando se esté realizando la fase concéntrica del ejercicio, los codos deben permanecer en los costados y nunca se deben poner por delante de uno mismo a no ser que se desee enfatizar el trabajo de bíceps y antebrazos. ',
              textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0) ,);
        
  }
}




