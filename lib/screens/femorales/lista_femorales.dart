import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
//import 'package:gym_app/screens/screens.dart';
//import 'package:gym_app/screens/ejercicio1.dart';

class listaFemorales extends StatelessWidget {
  const listaFemorales({ Key? key }) : super(key: key);

  final options = const['Curl de piernas', 'Curl de piernas recostado'];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuFemorales;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios para femorales')
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile( 
          title: Text( options[i] ),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
          onTap: () {

            Navigator.pushNamed(context,menuEjercicios[i].route );
          },
        ), 
        separatorBuilder: ( _ , __) => const Divider(), 
        itemCount: options.length,
      )
    );
  }

}