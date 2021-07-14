import 'package:card/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'card.dart';

class Reset extends StatefulWidget {
  //const Reset({Key key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {

  late String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.redAccent),
          title: Text('Reset Password',
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
        body: LayoutBuilder (
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
                      Image.asset('assets/images/resetpassword.png',height: 250),
                      SizedBox(height: 50),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 18,color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Email',
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
                          ),
                        ),
                        onChanged: (value){
                          setState((){
                            email = value;
                          });
                        },
                      ),
                      SizedBox(height: 50),
                      TextButton(
                        child: Text(
                          'Send Reset Request',
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
                              side: BorderSide(color: Colors.white,width: 0),
                            ),
                          ),
                        ),
                        onPressed: (){
                          auth.sendPasswordResetEmail(email: email);
                          Navigator.of(context).pop(MaterialPageRoute(builder: (context) => LoginScreen()));
                          Fluttertoast.showToast(msg: 'A mail has been sent to your given email, follow the stpes to reset the password',
                          toastLength: Toast.LENGTH_LONG,
                          );
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
