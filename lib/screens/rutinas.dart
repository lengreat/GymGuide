import 'package:flutter/material.dart';

class Rutinas extends StatelessWidget {
   
  const Rutinas({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: const Text('RUTINAS'),
      ),
      body: const Center(
         child: Text('Muy pronto', style: TextStyle(fontSize: 23),),
      ),
    );
  }
}