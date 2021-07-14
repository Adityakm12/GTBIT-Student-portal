import 'package:card/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:card/card.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.get('email');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home:email == null ? Home() : MainPage()));
}


