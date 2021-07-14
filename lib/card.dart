import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card/drawerWidget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

final FirebaseAuth auth = FirebaseAuth.instance;

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String displayName = '';
  String rollNumber = '';
  String Batch = '';
  String phone = '';
  String imageurl = '';


  @override
  void initState() {
    super.initState();
    getData();
    getUserData();
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      displayName = prefs.getString('displayName')??'';
      rollNumber = prefs.getString('rollNumber')??'';
      Batch = prefs.getString('Batch')??'';
      phone = prefs.getString('phone')??'';
      imageurl = prefs.getString('imageurl')??'';
    });
  }


  late User userDetails;
  Future<void> getUserData()async{
    User? userData = FirebaseAuth.instance.currentUser;
    setState(() {
      userDetails = userData!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.redAccent),
        title: Text('STUDENT PORTAL',
        style: TextStyle(
          fontFamily: 'crimson',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 20,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: InkWell(
                  onTap: (){
                    dialogBox();
                  },
                  child: CircleAvatar(
                    //backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(imageurl),
                    radius: 60,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 50.0,
              ),
              Text(
                'NAME',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              showname(),
              SizedBox(height: 20.0),
              Text(
                'ENROLLMENT NUMBER',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              showRollNumber(),
              SizedBox(height: 20.0),
              Text(
                'BATCH',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              showBatch(),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                      '${userDetails.email}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ))
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  showPhone(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showname() {
    if (displayName != null)
      return Text("$displayName",
          style: TextStyle(color: Colors.redAccent,fontFamily: 'crimson', letterSpacing: 2.0,fontWeight: FontWeight.bold, fontSize: 25));
    else
      return Text('no details',
          style: TextStyle(color: Colors.redAccent,fontFamily: 'crimson',letterSpacing: 2.0,fontWeight: FontWeight.bold, fontSize: 25));
  }
  showRollNumber() {
    if (rollNumber != null)
      return Text("$rollNumber",
          style: TextStyle(color: Colors.redAccent,fontFamily: 'crimson',letterSpacing: 2.0,fontWeight: FontWeight.bold, fontSize: 28));
    else
      return Text('no details',
          style: TextStyle(color: Colors.redAccent,fontFamily: 'crimson',letterSpacing: 2.0,fontWeight: FontWeight.bold, fontSize: 28));
  }
  showBatch() {
    if (Batch != null)
      return Text("$Batch",
          style: TextStyle(color: Colors.redAccent,fontFamily: 'crimson',letterSpacing: 2.0,fontWeight: FontWeight.bold, fontSize: 28));
    else
      return Text('no details',
          style: TextStyle(color: Colors.redAccent,fontFamily: 'crimson',letterSpacing: 2.0,fontWeight: FontWeight.bold, fontSize: 28));
  }
  showPhone() {
    if (phone != null)
      return Text("$phone",
          style: TextStyle(color: Colors.black,fontFamily: 'crimson',letterSpacing: 2.0, fontSize: 18));
    else
      return Text('no details',
          style: TextStyle(color: Colors.black,fontFamily: 'crimson',letterSpacing: 1.0,fontWeight: FontWeight.bold, fontSize: 18));
  }

  void dialogBox() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(imageurl),
            ],
          ),
        )
    );
  }

}