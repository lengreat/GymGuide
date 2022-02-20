import 'package:flutter/material.dart';
import 'package:gym_app/widgets/widgets.dart';

class PressBanca extends StatelessWidget {
   
  const PressBanca({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title:  const Text('Press de banca'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children:  [
          
          CustomCardType1(
            titulo: const Text('''PRESS DE BANCA             
                '''),
            contenido:  textoContenido(),
            ),
          const SizedBox( height: 10 ),
          const CustomCardType2( imageUrl: 'https://www.masmusculo.com/blog/wp-content/uploads/2016/07/press.jpg', height: 600.0,),
        ],
      )
    
    );
  }
  Text textoContenido() {
    return  const Text(
      'Recostado sobre un banco horizontal, los brazos estirados verticalmente, con la barra cargada en las manos, el movimiento consiste en bajar la barra hasta que toque el torso (fase excéntrica) y luego subir (fase concéntrica) hasta la posición inicial.1​ Las manos están en pronación, es decir, las palmas hacia los pies (la amplitud del movimiento debe adaptarse según la morfología). ',
              textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0) ,);
        
  }
}




