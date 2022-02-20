import 'package:flutter/material.dart';
import 'package:gym_app/models/models.dart';
import 'package:gym_app/theme/app_theme.dart';


class Listado extends StatelessWidget {
  final String titulo;

  final List <String>options;

  final List<Menu> menuEjercicios;
  const Listado({
    Key? key,
    required this.titulo,
    required this.options,
    required this.menuEjercicios, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile( 
         // title: Text('Ejercicio :${i+1}'),
          title: Text( options[i] ),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
          onTap: () {
                //final route=MaterialPageRoute(builder: (context)=>const Ejercicio1());

            Navigator.pushNamed(context,menuEjercicios[i].route );
          },
        ), 
        //itemBuilder: (context, i)=>  Text('Ejercicio : ${i}'),
        separatorBuilder: ( _ , __) => const Divider(), 
        itemCount: options.length,
        //itemCount: 100,
      )
    );
  }
}
