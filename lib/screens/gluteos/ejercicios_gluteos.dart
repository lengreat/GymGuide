import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
//import 'package:gym_app/screens/screens.dart';
//import 'package:gym_app/screens/ejercicio1.dart';

class listaGluteos extends StatelessWidget {
  const listaGluteos({ Key? key }) : super(key: key);

  final options = const['Elevacion lateral de piernas', 'Elevacion de caderas', 'Patadas'];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuGluteos;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios para gluteos')
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