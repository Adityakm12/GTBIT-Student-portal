import 'package:card/Home.dart';
import 'package:card/meet.dart';
import 'package:card/profilepic.dart';
import 'package:card/selectStream/streamSelection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Websites_Notices/GTBIT_Notices.dart';
import 'Websites_Notices/ipu_Notices_Web.dart';

class NavigationDrawerWidget extends StatefulWidget {

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {

  String imageurl1 = '';

  @override
  void initState() {
    super.initState();
    getData();
  }
  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      imageurl1 = prefs.getString('imageurl1')??'';
    });
  }

  resultsURL() async{
    if(await canLaunch("http://ipuresults.co.in/")){
      await launch("http://ipuresults.co.in/"
      );
    }
    else{
      throw 'link can not be opened';
    }
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[100],
        child: ListView(
          padding:EdgeInsets.fromLTRB(20, 0, 29, 0),
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/collegelogo.jpg'),
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.redAccent,
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Id Card Image',
              style: TextStyle(
                fontFamily: 'crimson',
                fontSize: 18,
              ),
              ),
              onTap: (){
                dialogBox();
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Academics',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stream()));
              },
            ),
            ListTile(
              leading: Icon(Icons.video_call_rounded),
              title: Text('Class Meet',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            ListTile(
              leading: Icon(Icons.notes_rounded),
              title: Text('Take Notes',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                ),
              ),
              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page_sharp),
              title: Text('Result Website',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                ),
              ),
              onTap: (){
                resultsURL();
              },
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text('University Notices',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => IpuNotices()));
              },
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('College website',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => GTBITNotices()));
              },
            ),
            Divider(
              height: 5.0,
              color: Colors.redAccent,
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text('Update Images',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => profileImage())),
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout',
                style: TextStyle(
                  fontFamily: 'crimson',
                  fontSize: 18,
                  color: Colors.redAccent,
                ),
              ),
              onTap: () async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('email');
                _signout(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signout(BuildContext context)async{
    await _firebaseAuth.signOut().then((_) {
      Navigator.pushReplacement(context, new MaterialPageRoute(
        builder: (context) =>
            new Home()
      ));
    });
  }

  void dialogBox() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(imageurl1),
            ],
          ),
        )
    );
  }
}
