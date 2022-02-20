import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class Abs extends StatelessWidget {
  const Abs({ Key? key }) : super(key: key);

  final options = const['Abdominales superiores','Abdominales Laterales','Abdominales Inferiores'];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuAbs;
    return Listado(
      titulo: 'Ejercicios grupo abdominal',  
      options: options,
       menuEjercicios: menuEjercicios);
  }
}