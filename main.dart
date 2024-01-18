import 'package:flutter/material.dart';
import 'package:flutter_application_4/sign_up.dart';
import 'package:flutter_application_4/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart';
import 'login.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
     '/login': (BuildContext context){
       return LoginPage();
      },
      '/home':(context){
        return HomePage();
      },
      'splash':(context){
        return Splash_Animated();
      },
      'signUp':(context) => SignupPage()},
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
    );
  }
}
