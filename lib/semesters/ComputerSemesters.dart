import 'dart:io';

import 'package:card/Books/sem1Books.dart';
import 'package:card/Books/sem8Books.dart';
import 'package:card/Notes/Notes.dart';
import 'package:card/Notes/Sem3_notes.dart';
import 'package:card/Notes/sem1Notes.dart';
import 'package:card/Notes/sem5Notes.dart';
import 'package:card/Notes/sem_2_Notes.dart';
import 'package:card/Notes/sem_4_notes.dart';
import 'package:card/Notes/sem_6_notes.dart';
import 'package:card/Notes/sem_7_notes.dart';
import 'package:card/pdf/PDF_Viewer_Page.dart';
import 'package:card/pdf/pdf_Api.dart';
import 'package:card/samplepapers/sem1SamplePapers.dart';
import 'package:card/samplepapers/sem_6_samplePapers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cseSemlist extends StatefulWidget {

  @override
  _cseSemlistState createState() => _cseSemlistState();
}

class _cseSemlistState extends State<cseSemlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Select Semester',
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
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextButton(onPressed: (){
                      listSem1();
                    },
                      child: Text('First Semester',
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
                    SizedBox(height: 10),
                    TextButton(onPressed: (){
                     list2();
                    },
                      child: Text('Second Semester',
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
                    SizedBox(height: 10),
                    TextButton(onPressed: (){
                     list3();
                    },
                      child: Text('Third Semester',
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
                    SizedBox(height: 10),
                    TextButton(onPressed: (){
                      list4();
                    },
                      child: Text('Fourth Semester',
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
                    SizedBox(height: 10),
                    TextButton(onPressed: (){
                      list5();
                    },
                      child: Text('Fifth Semester',
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
                    SizedBox(height: 10),
                    TextButton(onPressed: (){
                     list6();
                    },
                      child: Text('Sixth Semester',
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
                    SizedBox(height: 10),
                    TextButton(onPressed: (){
                     list7();
                    },
                      child: Text('Seventh Semester',
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
                    SizedBox(height: 10),
                    TextButton(onPressed: (){
                      list8();
                    },
                      child: Text('Eighth Semester',
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
    );
  }

  //cards to display semester-wise data
  void listSem1() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 1',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'crimson',
                ),
                ),
              ),
              TextButton(onPressed: ()async{
                final url = 'SemesterPdf/sem1.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem1bookslist()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem1Noteslist()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem1SampalePaperslist()));
              },
                child: Text('Sample Papers',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void list2() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 2',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'crimson',
                  ),
                ),
              ),
              TextButton(onPressed: ()async{
                final url = 'SemesterPdf/sem2.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem2Notice()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void list3() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 3',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'crimson',
                  ),
                ),
              ),
              TextButton(onPressed: ()async{
                final url = 'SemesterPdf/sem3.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem3Notice()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void list4() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 4',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'crimson',
                  ),
                ),
              ),
              TextButton(onPressed: ()async{
                final url = 'SemesterPdf/sem4.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem4notes()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void list5() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 5',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'crimson',
                  ),
                ),
              ),
              TextButton(onPressed: ()async {
                final url = 'SemesterPdf/sem5.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem5notes()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void list6() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 6',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'crimson',
                  ),
                ),
              ),
              TextButton(onPressed: () async{
                final url = 'SemesterPdf/sem6.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem6Notes()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem6SamplePapers()));
              },
                child: Text('Sample Papers',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void list7()  {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 7',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'crimson',
                  ),
                ),
              ),
              TextButton(onPressed: () async{
                final url = 'SemesterPdf/sem7.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem7notes()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void list8() {
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 10.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Semester 8',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'crimson',
                  ),
                ),
              ),
              TextButton(onPressed: () async{
                final url = 'SemesterPdf/sem8.pdf';
                final file = await PDFApi.loadFirebase(url);

                if(file == null) return;
                openPDF(context, file);
              },
                child: Text('Syllabus',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem8Books()));
              },
                child: Text('Books PDF',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sem8Notes()));
              },
                child: Text('Notes',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
              },
                child: Text('Mock Test',
                  style: TextStyle(
                    fontFamily: 'crimson',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file:file)),
  );
}
