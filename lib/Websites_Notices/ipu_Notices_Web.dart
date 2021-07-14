import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class IpuNotices extends StatefulWidget {
  //const IpuNotices({Key key}) : super(key: key);

  @override
  _IpuNoticesState createState() => _IpuNoticesState();
}

class _IpuNoticesState extends State<IpuNotices> {

  univNoticesURL() async{
    if(await canLaunch("http://www.ipu.ac.in/notices.php")){
      await launch("http://www.ipu.ac.in/notices.php",
      );
    }
    else{
      throw 'link can not be opened';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(right: 15.0)),
          IconButton(onPressed: ()=>showActionSnackbar(context), icon: Icon(Icons.info)),
          IconButton(onPressed: (){
            univNoticesURL();
          },
              icon: Icon(Icons.public)),
        ],
        iconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
        backgroundColor: Colors.white,
        title: Text('University Notices',
        style: TextStyle(
          fontFamily: 'crimson',
          color: Colors.black,
        ),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Notices').orderBy('Date',descending: true).snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView(
              children: snapshot.data!.docs.map((document) {
                return Center(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(document['Notice'],
                              style: TextStyle(
                                fontFamily: 'crimson',
                                fontSize: 18,
                              ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(document['Date']),
                            ],
                          ),
                          Divider(
                            height: 5.0,
                            color: Colors.black,
                          ),
                          ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          }),
      );
  }
  void showActionSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.redAccent,
      content: Text(
        'For more Notices visit Ipu official website or click the Internet icon on top right',
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'crimson',
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
