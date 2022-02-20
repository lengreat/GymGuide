import 'package:flutter/material.dart';
import 'package:gym_app/widgets/widgets.dart';

class PesoMuerto extends StatelessWidget {
   
  const PesoMuerto({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title:  const Text('Peso Muerto'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children:  [
          
          CustomCardType1(
            titulo: const Text('''PESO MUERTO             
                '''),
            contenido:  textoContenido(),
            ),
          const SizedBox( height: 10 ),
          const CustomCardType2( imageUrl: 'https://tumejorfisico.com/wp-content/uploads/2015/07/peso-muerto-rumano.jpg', height: 600.0,),
        ],
      )
    
    );
  }
  Text textoContenido() {
    return  const Text(
               'La barra se encuentra en el suelo y el atleta debe asumir una posición erecta, con las rodillas bloqueadas al principio y al final del levantamiento. '
               'Éste debe colocarse mirando la barra y, flexionando sus piernas, se agacha hasta tener la barra a una distancia de manos ligeramente mayor a la distancia de los hombros. Luego, siempre mirando hacia el frente, empuja con las caderas adelante y posteriormente tirando con las piernas hasta quedar nuevamente erguido con las piernas trabadas. Los hombros deben quedar hacia atrás y la espalda con una curva hacia dentro. '
               'El levantamiento desde el suelo ha de hacerse sin tirones, los brazos han de estar rectos y tensados antes de comenzar a levantar el peso. Al final del movimiento los glúteos intervienen para alcanzar la posición de bloqueo. La posición final ha de ser erguida, sin inclinación hacia atrás o hacia delante. ',
              textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0) ,);
        
  }
}




