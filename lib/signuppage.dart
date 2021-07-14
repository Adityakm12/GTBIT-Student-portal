import 'package:card/profilepic.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {

  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {

  late String name, enrollmentnumber, batch, phonenumber, email, password;

  final firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
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
                    Image.asset('assets/images/singup.png',height: 150),
                    TextField(
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText:
                          'Enter your name',
                          hintStyle: TextStyle(
                            fontFamily: 'crimson',
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(Icons.person,color: Colors.white),
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                      onChanged: (value){
                        setState(() {
                          name = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextField(
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Enter your enrollment number',
                          hintStyle: TextStyle(
                            fontFamily: 'crimson',
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(Icons.format_list_numbered_sharp,color: Colors.white),
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
                          enrollmentnumber = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextField(
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Enter Batch',
                          hintStyle: TextStyle(
                            fontFamily: 'crimson',
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(Icons.group,color: Colors.white),
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
                          batch = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextField(
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Enter phone number',
                          hintStyle: TextStyle(
                            fontFamily: 'crimson',
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(Icons.phone,color: Colors.white),
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
                          phonenumber = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Enter Email',
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
                          )
                      ),
                      onChanged: (value){
                        setState(() {
                          email = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 18,color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'create Password',
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
                          password = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      child: Text(
                        'Signup',
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
                            side: BorderSide(color: Colors.black,width: 0),
                          ),
                        ),
                      ),
                      onPressed: ()async {
                        try{
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: email,
                              password: password)
                              .then((signedUser) async {
                            final SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setString('email', email);
                            prefs.setString('displayName', name);
                            prefs.setString('Batch', batch);
                            prefs.setString('rollNumber', enrollmentnumber);
                            prefs.setString('phone', phonenumber);
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => profileImage()));
                          });
                        } on FirebaseAuthException catch(error){
                          Fluttertoast.showToast(
                              msg: error.message!,
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.TOP,
                          );
                        }
                      },
                    ),
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
