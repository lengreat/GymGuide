import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class EjerSup extends StatelessWidget {
  const EjerSup({ Key? key }) : super(key: key);

  final options = const[
  'Clasico',
  'Banco',
  ];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuAbsS;
    return Listado(
      titulo: 'Ejercicios para abdominales superiores',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}