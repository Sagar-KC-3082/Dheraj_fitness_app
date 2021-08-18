import 'dart:io';
import 'package:dance_id/account/create_account1.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
        child: Center(
          child: Column(
            children: [
              Image.asset("images/logo.png", width: 190.03, height: 168.15,),
              SizedBox(height: 30,),
              SizedBox(
                width: 306,
                height: 50,
                child: FlatButton(
                  color: Color.fromRGBO(59, 59, 59, 1),
                  child: Text("CONTINUE WITH EMAIL", style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(5)),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateAccount1()));

                  },
                ),
              ),
              SizedBox(height: 20,),
              Text("Or",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(height: 20,),
              SizedBox(
                width: 306,
                height: 50,
                child: FlatButton(
                  onPressed: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => MainPageDashboard()));

                  },
                  child: Text('Continue with Facebook', style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
                  )
                  ),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 306,
                height: 50,
                child: FlatButton(
                  onPressed: signIn,
                  child: Text('Continue with Google', style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
                  )
                  ),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                  onTap: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => MainPageDashboard()));
                  },
                  child: Text("Continue as a guest", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
              Expanded(child: SizedBox(height: 100,)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("By continuing or otherwise indicating assent electronically. you agree to the DANCE ID Consumer Agreement which includes the DANCE ID Privacy Policy",
                  style: TextStyle(fontSize: 11),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Future signIn() async {
  await SignInWithGoogle.login();
}


class SignInWithGoogle {
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount> login() => _googleSignIn.signIn();
}
