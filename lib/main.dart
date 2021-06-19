import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kasirku/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
  GetMaterialApp(
    defaultTransition: Transition.cupertino,
    home: SplashScreen(),
  );
}

class SplashScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) =>
  Scaffold(
    body: Column(
      children: [
        Flexible(
          child: Center(
            child: Text("KASIRKU",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ),
        FutureBuilder(
          future: onLoad(),
          builder: (context, snapshot) => 
          snapshot.connectionState != ConnectionState.done
          ? CircularProgressIndicator()
          : ListTile(
            title: Center(
              child: Text("Powered By Aku Sendiri")
            ),
          ),
        )
      ],
    ),
  );

  onLoad()async{
    await Future.delayed(Duration(seconds: 2));
    Get.offAll(Login());
  }
}



