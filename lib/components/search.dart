import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Text("SEARCH", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),)),
                  )),
              SizedBox(height: 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,

                height: 54.09,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),

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
                      height: 2,
                      color: Colors.white,

                    ),


                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white30,
                      enabledBorder: OutlineInputBorder(


                          borderSide: BorderSide(color: Colors.white, width: 1)

                      ),
                      focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.white, width: 1)


                      ),
                      hintText:  "Start Typing",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily:'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),

                    ),

                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,

                height: 54.09,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),

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
                      height: 2,
                      color: Colors.white,

                    ),


                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white30,
                      enabledBorder: OutlineInputBorder(


                          borderSide: BorderSide(color: Colors.white, width: 1)

                      ),
                      focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.white, width: 1)


                      ),
                      hintText:  "Current Location - 5 km",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily:'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),

                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Current Location", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
