import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/screens/screens.dart';
//import 'package:gym_app/screens/ejercicio1.dart';

class listaPiernas extends StatelessWidget {
  const listaPiernas({ Key? key }) : super(key: key);

  final options = const['Peso Muerto','Sentadilla','Prensa inclinado', 'Zancada', 'Extension de piernas'];
  @override
    Widget build(BuildContext context) {
    final menuEjerciciosPiernas=AppRoutes.menuPiernas;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios para piernas')
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile( 
          title: Text( options[i] ),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
          onTap: () {

            Navigator.pushNamed(context,menuEjerciciosPiernas[i].route );
          },
        ), 
        separatorBuilder: ( _ , __) => const Divider(), 
        itemCount: options.length,
      )
    );
  }

}