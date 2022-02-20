import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class ListaBrazos extends StatelessWidget {
  const ListaBrazos({ Key? key }) : super(key: key);

  final options = const['Biceps Mancuernas',
  'Mancuernas simultanea ',
  ' Triceps banca',
  ' Flexiones de triceps',
  ];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuBrazos;
    return Listado(
      titulo: 'Ejercicios grupo brazos',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}