//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:gym_app/models/menu_exercises_p.dart';
import 'package:gym_app/models/models.dart';
import 'package:gym_app/screens/abs/abs_lat/ejer_lat.dart';
import 'package:gym_app/screens/abs/abs_sup/ejer_sup.dart';
import 'package:gym_app/screens/back/lista_espalda.dart';
import 'package:gym_app/screens/femorales/lista_femorales.dart';
import 'package:gym_app/screens/gluteos/ejercicios_gluteos.dart';
import 'package:gym_app/screens/pantorrillas/ejercicios_pant.dart';
//import 'package:gym_app/screens/ejercicio1.dart';
import 'package:gym_app/screens/rutinas.dart';
import 'package:gym_app/screens/screens.dart';

//AppRoutes CONTIENE TODAS LAS RUTAS
// import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> appRoutes = {};

  static final menuOptions = <Menu>[
    // TODO: borrar home
    // Menu(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp ),
     Menu(route: 'listview1', name: 'Superior Part', screen: const Superior(), icon: Icons.list_alt ),
     Menu(route: 'listview2', name: 'Posterior Part', screen: const Posterior(), icon: Icons.list ),
  //   MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined ),
  //   MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card ),
  //   MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined ),
  //   MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded ),
  //   MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded ),
  //   MenuOption(route: 'slider', name: 'Slider && Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
  //   MenuOption(route: 'listviewbuilder', name: 'InfiniteScrol & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined ),
   ];

   static final menuExercisesP=<Menu>[
      Menu(route: 'piernas', name: 'Ejercicio 1', screen: const listaPiernas(), icon: Icons.list ),
      Menu(route: 'femorales', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'pantorillas', name: 'Ejercicio 3', screen: const listaPantorrillas(), icon: Icons.list ),
      Menu(route: 'gluteos', name: 'Ejercicio 4', screen: const listaGluteos(), icon: Icons.list ),

   ];
   static final menuPiernas=<Menu>[
      Menu(route: 'peso_muerto', name: 'Ejercicio 1', screen: const PesoMuerto(), icon: Icons.list ),
      Menu(route: 'sentadilla', name: 'Ejercicio 2', screen: const Sentadilla(), icon: Icons.list ),
      Menu(route: 'prensa45', name: 'Ejercicio 3', screen: const Ejercicio3(), icon: Icons.list ),
      Menu(route: 'zancada', name: 'Ejercicio 4', screen: const Ejercicio3(), icon: Icons.list ),
      Menu(route: 'extension_sentado', name: 'Ejercicio 5', screen: const Ejercicio3(), icon: Icons.list ),

   ];
   static final menuFemorales=<Menu>[
      Menu(route: 'curl', name: 'Ejercicio 1', screen: const Ejercicio1(), icon: Icons.list ),
      Menu(route: 'curl_down', name: 'Ejercicio 2', screen: const Sentadilla(), icon: Icons.list ),

   ];
   static final menuGluteos=<Menu>[
      Menu(route: 'elevacion_lat__pierna', name: 'Ejercicio 1', screen: const Ejercicio1(), icon: Icons.list ),
      Menu(route: 'elev_cadera', name: 'Ejercicio 2', screen: const Sentadilla(), icon: Icons.list ),
      Menu(route: 'patada', name: 'Ejercicio 3', screen: const Sentadilla(), icon: Icons.list ),

   ];
   static final menuPantorrillas=<Menu>[
      Menu(route: 'pantorrilla', name: 'Ejercicio 1', screen: const Ejercicio1(), icon: Icons.list ),

   ];
   
   static final menuExercisesS=<Menu>[
      Menu(route: 'abs', name: 'Ejercicio 1', screen: const Abs(), icon: Icons.list ),
      Menu(route: 'arm', name: 'Ejercicio 2', screen: const ListaBrazos(), icon: Icons.list ),
      Menu(route: 'back', name: 'Ejercicio 3', screen: const ListaEspalda(), icon: Icons.list ),
      Menu(route: 'shoulder', name: 'Ejercicio 4', screen: const ListaHombros(), icon: Icons.list ),
      Menu(route: 'chest', name: 'Ejercicio 4', screen: const ListaPecho(), icon: Icons.list ),

   ];
   static final menuAbs=<Menu>[
      Menu(route: 'Sup', name: 'Ejercicio 1', screen: const EjerSup(), icon: Icons.list ),
      Menu(route: 'Lat', name: 'Ejercicio 2', screen: const EjerLat(), icon: Icons.list ),
      Menu(route: 'Inf', name: 'Ejercicio 3', screen: const EjerInf(), icon: Icons.list ),

   ];
   static final menuAbsI=<Menu>[
      Menu(route: 'ToqueTalon', name: 'Ejercicio 1', screen: const listaPiernas(), icon: Icons.list ),
      Menu(route: 'Tijeras', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'deslizadores', name: 'Ejercicio 3', screen: const listaPantorrillas(), icon: Icons.list ),
      Menu(route: 'alpinista', name: 'Ejercicio 3', screen: const listaPantorrillas(), icon: Icons.list ),
      Menu(route: 'escaladorCruzado', name: 'Ejercicio 3', screen: const listaPantorrillas(), icon: Icons.list ),
      Menu(route: 'elev_recto', name: 'Ejercicio 3', screen: const listaPantorrillas(), icon: Icons.list ),

   ];
   static final menuAbsL=<Menu>[
      Menu(route: 'Lateral_recostado', name: 'Ejercicio 1', screen: const listaPiernas(), icon: Icons.list ),
      Menu(route: 'Bicicleta', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
   ];
   static final menuAbsS=<Menu>[
      Menu(route: 'Clasico', name: 'Ejercicio 1', screen: const AbsRec(), icon: Icons.list ),
      Menu(route: 'Banco', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
   ];
   static final menuBrazos=<Menu>[
      Menu(route: 'Mancuernas', name: 'Ejercicio 1', screen: const listaPiernas(), icon: Icons.list ),
      Menu(route: 'MancuernasSimul', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Triceps_banca', name: 'Ejercicio 3', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Flexiones_triceps', name: 'Ejercicio 4', screen: const listaFemorales(), icon: Icons.list ),
   ];
   static final menuEspalda=<Menu>[
      Menu(route: 'Dominadas', name: 'Ejercicio 1', screen: const Dominada(), icon: Icons.list ),
      Menu(route: 'Remo_sentadp', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Superman', name: 'Ejercicio 3', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Pullover', name: 'Ejercicio 4', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Cuadrupedo', name: 'Ejercicio 4', screen: const listaFemorales(), icon: Icons.list ),
   ];
   static final menuHombros=<Menu>[
      Menu(route: 'Aperturas', name: 'Ejercicio 1', screen: const listaPiernas(), icon: Icons.list ),
      Menu(route: 'Encogimiento', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Lev_frontal', name: 'Ejercicio 3', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Prensa_hombro', name: 'Ejercicio 4', screen: const listaFemorales(), icon: Icons.list ),
   ];
   static final menuPecho=<Menu>[
      Menu(route: 'Apertura', name: 'Ejercicio 1', screen: const listaPiernas(), icon: Icons.list ),
      Menu(route: 'Cruz', name: 'Ejercicio 2', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Flexiones', name: 'Ejercicio 3', screen: const listaFemorales(), icon: Icons.list ),
      Menu(route: 'Press', name: 'Ejercicio 4', screen: const PressBanca(), icon: Icons.list ),
   ];

    

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    //Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });
    appRoutes.addAll({ 'rutinas' : ( BuildContext context ) => const  Rutinas() });

    // for (final option in menuOptions) {
    //   appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    // }
    // for (final option in menuExercisesP){
    //   appRoutes.addAll({option.route:(BuildContext context)=>option.screen});
    // }
    // for (final option in menuPiernas){
    //   appRoutes.addAll({option.route:(BuildContext context)=>option.screen});
    // }
    //  for (final option in menuFemorales){
    //    appRoutes.addAll({option.route:(BuildContext context)=>option.screen});
    //  }
    // for (final option in menuPantorrillas){
    //   appRoutes.addAll({option.route:(BuildContext context)=>option.screen});
    // }
    // for (final option in menuGluteos){
    //   appRoutes.addAll({option.route:(BuildContext context)=>option.screen});
    // }

    llenadoRoutes(menuOptions);
    llenadoRoutes(menuExercisesP);
    llenadoRoutes(menuPiernas);
    llenadoRoutes(menuFemorales);
    llenadoRoutes(menuPantorrillas);
    llenadoRoutes(menuGluteos);
    llenadoRoutes(menuExercisesS);
    llenadoRoutes(menuAbs);
    llenadoRoutes(menuAbsI);
    llenadoRoutes(menuAbsL);
    llenadoRoutes(menuAbsS);
    llenadoRoutes(menuBrazos);
    llenadoRoutes(menuEspalda);
    llenadoRoutes(menuHombros);
    llenadoRoutes(menuPecho);
    return appRoutes;
  }

   static void llenadoRoutes(List<Menu> menu) {
     for (final option in menu) {
       appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
     } 
   }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     : ( BuildContext context ) => const HomeScreen(),
  //   'listview1': ( BuildContext context ) => const Listview1Screen(),
  //   'listview2': ( BuildContext context ) => const Listview2Screen(),
  //   'alert'    : ( BuildContext context ) => const AlertScreen(),
  //   'card'     : ( BuildContext context ) => const CardScreen(),
  // };

  // static Route<dynamic> onGenerateRoute( RouteSettings settings) {        
  //     return MaterialPageRoute(
  //         builder: (context) => const AlertScreen(),
  //     );
  // }

}