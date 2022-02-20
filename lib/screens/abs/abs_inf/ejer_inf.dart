import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class EjerInf extends StatelessWidget {
  const EjerInf({ Key? key }) : super(key: key);

  final options = const['Toque de talon',
  'Tijeras',
  'Deslizadores',
  'Alpinista',
  'Escaladores cuerpo cruzado',
  'Elevacion pierna recta'
  ];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuAbsI;
    return Listado(
      titulo: 'Ejercicios para abdominales inferiores',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}