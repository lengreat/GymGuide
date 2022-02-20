import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class ListaHombros extends StatelessWidget {
  const ListaHombros({ Key? key }) : super(key: key);

  final options = const['Apertura con mancuernas',
  'Encogimiento de hombros  ',
  ' Levantamiento frontal con mancuerna',
  ' Prensa de hombro',
  ];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuHombros;
    return Listado(
      titulo: 'Ejercicios grupo Hombros',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}