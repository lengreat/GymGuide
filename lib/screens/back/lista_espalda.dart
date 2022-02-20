import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class ListaEspalda extends StatelessWidget {
  const ListaEspalda({ Key? key }) : super(key: key);

  final options = const['Dominadas',
  'Remo Sentado  ',
  ' Superman',
  ' Pullover',
  ' Cuadrupedo',
  ];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuEspalda;
    return Listado(
      titulo: 'Ejercicios grupo espalda',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}