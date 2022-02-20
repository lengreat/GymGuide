import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
//import 'package:gym_app/screens/screens.dart';
import 'package:gym_app/widgets/modeloListado.dart';
//import 'package:gym_app/screens/ejercicio1.dart';

class Posterior extends StatelessWidget {
  const Posterior({ Key? key }) : super(key: key);

  final options = const['Piernas','Femorales','Pantorillas', 'Gluteos'];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuExercisesP;
    //final route=MaterialPageRoute(builder: (context)=>const Ejercicio1());
    return Listado(
      titulo: 'Ejercicios parte inferior',  
      options: options,
       menuEjercicios: menuEjercicios);



    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Ejercicios parte inferior')
    //   ),
    //   body: ListView.separated(
    //     itemBuilder: (context, i) => ListTile( 
    //      // title: Text('Ejercicio :${i+1}'),
    //       title: Text( options[i] ),
    //       trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
    //       onTap: () {
    //             //final route=MaterialPageRoute(builder: (context)=>const Ejercicio1());

    //         Navigator.pushNamed(context,menuEjercicios[i].route );
    //       },
    //     ), 
    //     //itemBuilder: (context, i)=>  Text('Ejercicio : ${i}'),
    //     separatorBuilder: ( _ , __) => const Divider(), 
    //     itemCount: options.length,
    //     //itemCount: 100,
    //   )
    // );
  }

}