import 'dart:io';

import 'package:card/pdf/PDF_Viewer_Page.dart';
import 'package:card/pdf/pdf_Api.dart';
import 'package:card/semesters/ComputerSemesters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sem6Notes extends StatefulWidget {
  //const sem6Notes({Key key}) : super(key: key);

  @override
  _sem6NotesState createState() => _sem6NotesState();
}

class _sem6NotesState extends State<sem6Notes> {
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
                      child: Text('Operating System',
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
                      title: Text('Unit 1 and 2',
                        style: TextStyle(
                          fontFamily: 'crimson',
                          fontSize: 18,
                        ),
                      ),
                      onTap: () async{
                        final url = '/sem6notes/OS_notes.pdf';
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
