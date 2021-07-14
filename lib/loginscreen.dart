import 'package:card/reset_password.dart';
import 'package:card/signuppage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'card.dart';

class LoginScreen extends StatefulWidget {



  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late String email;
  late String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder (
        builder: (BuildContext context, BoxConstraints viewportConstraints){
          return Container(
            padding: const EdgeInsets.all(15),
            color: Colors.white,
            //color: Theme.of(context).primaryColor,
            width: double.infinity,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset('assets/images/loginicon.png',height: 250),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.mail,color: Colors.white),
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                      ),
                      onChanged: (value){
                        setState((){
                          email = value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(Icons.password,color: Colors.white),
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                      onChanged: (value){
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    SizedBox(height: 1),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reset()));
                    },
                        child: Text('Forgot Password?',
                          style: TextStyle(
                            color: Colors.redAccent,
                          )
                        )
                    ),
                    SizedBox(height: 1),
                    TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                        elevation: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.white,width: 0),
                          ),
                        ),
                      ),
                      onPressed: ()async{
                        try{
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: email,
                              password: password)
                              .then((signedUser) async {
                            final SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setString('email', email);
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage()));
                          });
                        } on FirebaseAuthException catch(e){
                          Fluttertoast.showToast(msg: e.message!,toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.TOP);
                        }
                      },
                    ),
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?",
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Signup()));
                        },
                            child: Text('SignUp',style: TextStyle(color: Colors.redAccent),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
