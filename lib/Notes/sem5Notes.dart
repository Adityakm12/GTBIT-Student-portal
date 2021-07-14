import 'dart:io';

import 'package:card/pdf/PDF_Viewer_Page.dart';
import 'package:card/pdf/pdf_Api.dart';
import 'package:card/semesters/ComputerSemesters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sem5notes extends StatefulWidget {
  //const sem5notes({Key key}) : super(key: key);

  @override
  _sem5notesState createState() => _sem5notesState();
}

class _sem5notesState extends State<sem5notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Notes',
          style: TextStyle(
            fontFamily: 'crimson',
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text('Software Engineering',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'crimson',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Divider(
                        color: Colors.redAccent,
                        height: 10.0,
                      ),
                    ),
                    ListTile(
                      title: Text('Software testing',
                        style: TextStyle(
                          fontFamily: 'crimson',
                          fontSize: 18,
                        ),
                      ),
                      onTap: () async{
                        final url = '/sem5notes/Software_Engineering.pdf';
                        final file = await PDFApi.loadFirebase(url);

                        if(file == null) return;
                        openPDF(context, file);
                      },
                    ),
                    Center(
                      child: Text('Algorithms Design and Analysis',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'crimson',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Divider(
                        color: Colors.redAccent,
                        height: 10.0,
                      ),
                    ),
                    ListTile(
                      title: Text('Unit 3',
                        style: TextStyle(
                          fontFamily: 'crimson',
                          fontSize: 18,
                        ),
                      ),
                      onTap: () async{
                        final url = '/sem5notes/Algorithms_Design_and_Analysis.pdf';
                        final file = await PDFApi.loadFirebase(url);

                        if(file == null) return;
                        openPDF(context, file);
                      },
                    ),
                  ],)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file:file)),
  );
}

