import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class EjerLat extends StatelessWidget {
  const EjerLat({ Key? key }) : super(key: key);

  final options = const[
  'Lateral recostado',
  'Bicicleta',
  ];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuAbsL;
    return Listado(
      titulo: 'Ejercicios para abdominales laterales',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}