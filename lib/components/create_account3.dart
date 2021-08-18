import 'package:dance_id/components/create_account4.dart';
import 'package:flutter/material.dart';

class CreateAccount3 extends StatefulWidget {
  @override
  _CreateAccount3State createState() => _CreateAccount3State();
}

class _CreateAccount3State extends State<CreateAccount3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[90],
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Image.asset("images/Ellipse 23.png", width: 90.2, height: 90.2,),
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Create a family account?", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
          )),
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 80.8,
              height: 80.8,

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color.fromRGBO(255, 98, 0, 1),
                        Color.fromRGBO(255, 181, 113, 1)
                      ]
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 27),
                child: Text("SM", style: TextStyle(fontSize:29, fontWeight: FontWeight.w500, color: Colors.white ),),
              ),
              ),

          ),
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Sandeep Mandloi", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
          )),
          SizedBox(height: 50,),
          Center(
            child: Container(
              width: 80.8,
              height: 80.8,

              decoration: BoxDecoration(
                  color: Color.fromRGBO(69, 95, 170, 1),
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
                child: Text("JJ", style: TextStyle(fontSize:29, fontWeight: FontWeight.w500, color: Colors.white ),),
              ),
            ),

          ),
          
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Sandeep Mandloi", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
          )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27.83),
            child: FlatButton(
              color: Color.fromRGBO(59, 59, 59, 1),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("CREATE ACCOUNT", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white),),
              ),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.black,
                  width: 1,
                  style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(5)),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateAccount4()));


              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.25,),
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("By creating an account, you agree to our Privacy Policy and Term of Use", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),
          )),
        ],
      ),
    );
  }
}
