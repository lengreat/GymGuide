import 'package:flutter/material.dart';
import 'package:gym_app/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;
  final double? height;
  
  const CustomCardType2({
    Key? key, 
    required this.imageUrl, 
    this.name,
    this.height,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child:InkWell(
        child:
           Column(
           children: [
         
          FadeInImage(
            image: NetworkImage( imageUrl ), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            //height:  height??600,
            fit: BoxFit.cover,
            //fadeInDuration: const Duration(milliseconds: 300),
          ),

          
          if ( name != null )
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10 ),
              child: Text( name ! )
            )

        ],
      ),
      onTap: (){
        _imagenHero(context);
      },
      ),
    );
  }

  void _imagenHero(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('second Page'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 110.0),
          children:[ Column(
            //widthFactor: double.infinity,
            
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Container(width: double.infinity, height: 100,color: Colors.redAccent,),
                InkWell(
                onTap:(){
                  Navigator.of(context).pop();
                },
                child:Hero(
                  tag: 'hero-rectangle',
                  //child: _blueRectangle(const Size(200, 200)),
                  child:Image.network(imageUrl, width:double.infinity,fit: BoxFit.cover,)
                  
                )
                ),
              ],
            ),
          ]
        ),
        ),
      ),
    );
  }
}