import 'package:dance_id/components/mainPage.dart';
import 'package:dance_id/components/navscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CreateAccount4 extends StatefulWidget {
  @override
  _CreateAccount4State createState() => _CreateAccount4State();
}

class _CreateAccount4State extends State<CreateAccount4> {
  String _select;
  bool _switchValue=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 98, 0, 1),
                Color.fromRGBO(255, 181, 113, 1)
              ],
            )),
        child: Align(
            alignment: Alignment.center,
            child: Column(
              children:[
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                Text("CREATE YOUR APP ACCOUNT", style: TextStyle(fontSize:19, fontWeight: FontWeight.w500, color: Colors.white ),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                Container(
                  margin: EdgeInsets.fromLTRB(27.83, 10, 27.83, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      border: Border.all(color: Colors.white,
                      )

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: SizedBox(),
                      hint: Text("India", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,)),
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
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Get emails with news and promo", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                          Text("Updates on the latest events and deals", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        ],
                      ),
                      CupertinoSwitch(
                        activeColor: Colors.grey[300],
                        trackColor: Colors.grey[300],
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;

                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.4,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  width: 369.33,
                  height: 57.47,
                  child: FlatButton(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("CREATE ACCOUNT", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.orange[700]),),
                    ),
                    shape: RoundedRectangleBorder(side: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(5)),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => NavScreen()));
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.035,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("By creating an account, you agree to our Privacy Policy and Term of Use", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.white),),
                )),
              ],
            ),
        ),
      ),
    );
  }
}
