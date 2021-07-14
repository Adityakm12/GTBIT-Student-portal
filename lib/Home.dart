import 'package:flutter/material.dart';
import 'signuppage.dart';
import 'loginscreen.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            image: DecorationImage(image: AssetImage('assets/images/frontimage.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      SizedBox(height: 30),
                      Text("GTBIT Student's Portal",
                        style: TextStyle(
                          fontFamily: 'crimson',
                          color: Colors.redAccent,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: Text('A collective repository for all your academic curriculum',
                          style: TextStyle(
                            fontFamily: 'crimson',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
                  },
                    child: Text('Getting Started',
                      style: TextStyle(
                        fontFamily: 'crimson',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      elevation: MaterialStateProperty.all(5),
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.white,width: 2),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Have an account?',
                        style: TextStyle(
                            fontFamily: 'crimson',
                            color: Colors.black
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                          child: Text("Login",
                          style: TextStyle(
                            fontFamily: 'crimson',
                            color: Colors.redAccent,
                          ),
                          ))
                    ],
                  )
                ],)
            ],
          ),
        ),
      ),
    );
  }
}