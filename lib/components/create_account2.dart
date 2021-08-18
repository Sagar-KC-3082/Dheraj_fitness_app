import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'create_account3.dart';

class CreateAccount2 extends StatefulWidget {
  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[90],
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.18,vertical: 10),
            child: Text("DANCE ID ACCOUNT OWNER", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.18, vertical: 10),
            child: Text("First name", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 7),
            child: SizedBox(
              width: 309,
              height: 46,
              child: Material(
                elevation: 7,
                shadowColor: Colors.grey[50],

                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please enter the Email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  obscureText: false,

                  style: TextStyle(
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1),width: 30)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1), width: 30)

                    ),

                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily:'Poppins',

                    ),

                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.18, vertical: 10),
            child: Text("Last name", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 7),
            child: SizedBox(
              width: 309,
              height: 46,
              child: Material(
                elevation: 7,
                shadowColor: Colors.grey[50],

                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please enter the Email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  obscureText: false,

                  style: TextStyle(
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1),width: 30)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1), width: 30)

                    ),

                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily:'Poppins',

                    ),

                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: InkWell(
              onTap: (){

              },
              child: Row(
                children: [
                  Icon(Icons.add_circle,color: Color.fromRGBO(69, 95, 170, 1),size: 45,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Add another", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27.83),
            child: FlatButton(
              color: Color.fromRGBO(59, 59, 59, 1),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("NEXT", style: TextStyle(color: Colors.white),),
              ),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.black,
                  width: 1,
                  style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(5)),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateAccount3()));


              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
          Image.asset("images/grayscale_logo.png", width: 105.09, height: 92.99,),
          Center(child: Text("@2021 DANCE ID, Inc", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)),
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Privacy Policy and Your Privacy Right", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
          )),

        ],
      ),
    );
  }
}
