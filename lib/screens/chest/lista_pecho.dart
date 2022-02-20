import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class ListaPecho extends StatelessWidget {
  const ListaPecho({ Key? key }) : super(key: key);

  final options = const['Apertura pecho',
  'Cruzamiento con polea  ',
  ' Flexiones',
  ' Press de banca',
  ];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuPecho;
    return Listado(
      titulo: 'Ejercicios grupo Pecho',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}