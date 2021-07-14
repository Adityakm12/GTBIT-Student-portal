import 'dart:io';

import 'package:card/pdf/PDF_Viewer_Page.dart';
import 'package:card/pdf/pdf_Api.dart';
//import 'package:card/semesters/ComputerSemesters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sem8Books extends StatefulWidget {
  //const sem8Books({Key key}) : super(key: key);

  @override
  _sem8BooksState createState() => _sem8BooksState();
}

class _sem8BooksState extends State<sem8Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Books',
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
                      child: Text('MACHINE LEARNING',
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
                      title: Text('Machine Learning -Tom_Mitchell',
                        style: TextStyle(
                          fontFamily: 'crimson',
                          fontSize: 18,
                        ),
                      ),
                      onTap: () async{
                        final url = 'Books/Machine-Learning-Tom_Mitchell_compressed.pdf';
                        final file = await PDFApi.loadFirebase(url);

                        if(file == null) return;
                        openPDF(context, file);
                      },
                    ),
                    ListTile(
                      title: Text('Bishop - Pattern_Recognition And Machine_Learning - Springer',
                        style: TextStyle(
                          fontFamily: 'crimson',
                          fontSize: 18,
                        ),
                      ),
                      onTap: () async{
                        final url = 'Books/Bishop-Pattern_Recognition_And_Machine_Learning-Springer_2006.pdf';
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
