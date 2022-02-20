import 'package:flutter/material.dart';
import 'package:gym_app/theme/app_theme.dart';

class AssetCard extends StatelessWidget {

  final String image;
  final String? name;
  final double? height;
  
  const AssetCard({
    Key? key, 
    required this.image, 
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
         
          // FadeInImage(
          //   image: NetworkImage( imageUrl ), 
          //   placeholder: const AssetImage('assets/jar-loading.gif'),
          //   width: double.infinity,
          //   //height:  height??600,
          //   fit: BoxFit.cover,
          //   //fadeInDuration: const Duration(milliseconds: 300),
          // ),
           Image.asset(
                image,
                fit: BoxFit.contain,
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
          children:[ Column(
            //widthFactor: double.infinity,
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Container(width: double.infinity, height: 100,color: Colors.redAccent,),
                InkWell(
                onTap:(){
                  Navigator.of(context).pop();
                },
                child:Hero(
                  tag: 'hero-rectangle',
                  //child: _blueRectangle(const Size(200, 200)),
                  //child:Image.network(image, width:double.infinity,fit: BoxFit.cover,)
                  child: Image.asset(
                         image,
                         fit: BoxFit.contain,
                         ),
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