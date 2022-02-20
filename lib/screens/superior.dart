import 'package:flutter/material.dart';
import 'package:gym_app/router/app_routes.dart';
import 'package:gym_app/widgets/modeloListado.dart';

class Superior extends StatelessWidget {
  const Superior({ Key? key }) : super(key: key);

  final options = const['Abdominales','Brazos','Espalda', 'Hombros', 'Pecho'];
  @override
    Widget build(BuildContext context) {
    final menuEjercicios=AppRoutes.menuExercisesS;
    return Listado(
      titulo: 'Ejercicios parte superior',  
      options: options,
       menuEjercicios: menuEjercicios);



  
  }

}