import 'dart:io';

import 'package:card/card.dart';
import 'package:card/profilepic.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

class idCardpic extends StatefulWidget {
  //const idCardpic({Key key}) : super(key: key);
  @override
  _idCardpicState createState() => _idCardpicState();
}

class _idCardpicState extends State<idCardpic> {

  static const chars = "abcdefghijklmnopqrstuvwxyz0123456789";

  String? imageurl1;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Id Card Image",
        style: TextStyle(
          color: Colors.black,
        ),),
        elevation: 10.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: <Widget>[
            (imageurl1 != null)
                ?Image.network(imageurl1!):Placeholder(fallbackHeight: 200.0,fallbackWidth: 200),
            SizedBox(height: 30),
            Visibility(
              visible: isVisible,
              child: ElevatedButton(onPressed: () {
                uploadImage();setState(() {
                  isVisible = !isVisible;
                });
              },
                child: Text('Upload ID Card Image'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text('After selecting image please wait for sometime before proceeding!',
              style: TextStyle(
                color: Colors.black26,
                fontFamily: 'crimson',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: !isVisible,
        child: FloatingActionButton(
          onPressed:  () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage())),
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.redAccent,
        ),
      ),
    );;
  }
  uploadImage()async{
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile? image;
    image = (await _picker.getImage(source: ImageSource.gallery));
    var file = File(image!.path);

    if(image != null){
      //upload to firebase
      var snapshot = await _storage.ref()
          .child('idCardImages/idCard${RandomString(10)}')
          .putFile(file);

      var downloadUrl = await snapshot.ref.getDownloadURL();
      setState(() {
        imageurl1 = downloadUrl;
      });
    }else
    {
      print('no path recieved');
    }
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('imageurl1', imageurl1!);
  }
  //genrate random number for the image storing location
  String RandomString(int strlen) {
    Random rnd = new Random(new DateTime.now().millisecondsSinceEpoch);
    String result = "";
    for (var i = 0; i < strlen; i++) {
      result += chars[rnd.nextInt(chars.length)];
    }
    return result;
  }
}
