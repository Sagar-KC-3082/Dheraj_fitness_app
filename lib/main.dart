
import 'package:dance_id/account/edit_profile.dart';
import 'package:dance_id/components/mainPage.dart';
import 'package:dance_id/components/navscreen.dart';
import 'package:dance_id/components/ticket_selling.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:splashscreen/splashscreen.dart';

import 'components/home.dart';



void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:Color.fromRGBO(255, 98, 0, 1)));
  runApp(GetMaterialApp(
    
    debugShowCheckedModeBanner: false,
    home: BottomNavScreen(),

  ));
}


// class Splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 3,
//       navigateAfterSeconds:Home(),
//       backgroundColor: Colors.grey[90],
//
//       image : Image.asset("images/logo.png", width: 190.03, height: 168.15,),
//       // loadingText: Text("Loading"),
//       photoSize: 100,
//     );
//   }
// }


