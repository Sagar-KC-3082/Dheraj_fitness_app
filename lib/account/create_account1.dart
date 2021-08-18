
import 'package:dance_id/components/create_account2.dart';
import 'package:dance_id/components/create_account3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount1 extends StatefulWidget {
  @override
  _CreateAccount1State createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
  String _select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[90],
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Center(child: Image.asset("images/logo.png", width: 148, height: 130.95,)),
          Center(child: Text("Create Account", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Padding(
            padding: const EdgeInsets.fromLTRB(27.83, 10, 10, 10),
            child: Text("Country", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(27.83, 10, 27.83, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(7)),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 1)
                )

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: SizedBox(),
                hint: Text("United State", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,)),
                items: <String>['United State', "India", "Japan"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (newVal) {
                  setState(() {
                    _select = newVal;

                  });
                },
                value: _select,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),

              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateAccount2()));

                },
                child: Row(
                  children: [
                    Icon(Icons.add_circle,color: Color.fromRGBO(69, 95, 170, 1),size: 45,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Add Party", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                child: Text("CREATE ACCOUNT", style: TextStyle(color: Colors.white),),
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
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27.83),
            child: Text("By creating an account, you agree to our Privacy Policy and Term of Use", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),
          )

        ],
      ),
    );
  }
}

