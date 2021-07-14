import 'package:card/semesters/ComputerSemesters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stream extends StatefulWidget {
  //const Stream({Key key}) : super(key: key);

  @override
  _StreamState createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('SELECT STREAM',
        style: TextStyle(
          fontFamily: 'crimson',
          color: Colors.black,
          fontSize: 18,
        ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => cseSemlist()));
                    },
                      child: Text('Computer Science Engineering',
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
                  ],)
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showActionSnackbar(context),
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add_alert),

      ),
    );
  }

  void showActionSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.redAccent,
      content: Text(
        'More Streams will be added soon, Thankyou!',
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
