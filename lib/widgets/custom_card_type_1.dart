import 'package:flutter/material.dart';
import 'package:gym_app/theme/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  final Text titulo;
  final Text contenido;
  const CustomCardType1({
    Key? key,
    required this.titulo,
    required this.contenido,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

           ListTile(
            //leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary  ),
            title: titulo,
            subtitle: contenido,
          ),
        
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('READY', style: TextStyle(
                    fontSize: 20
                  ),),
                ),
                
              ],
            ),
          )

        ],
      )
    );
  }
}
