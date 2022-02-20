import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
   PhotoHero({ 
     Key? key, 
    required this.photo, 
    required this.onTap,
     required this.width
      }); 

  final String photo;
  final VoidCallback onTap;
  final double width;

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Center(
              child: Image.asset(
                photo,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}