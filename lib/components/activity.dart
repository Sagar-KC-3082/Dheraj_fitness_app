import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  String buttonText = "15 Aug";
  bool isChanged = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[50],
        elevation: 0,
        title: Text(
          "Activity",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.08,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 30),
          //   child: Text(
          //     "Activity",
          //     style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          //   ),
          // ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.08,
          // ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Activity",
                  style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(253, 127, 44, 1)),
                ),
                Text(
                  "0 Total Classes",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(253, 127, 44, 1)),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            minChildSize: 0.7,
              initialChildSize: 0.7,
              builder: (context, controller) => Container(
                    color: Colors.white,
                    child: ListView(
                      controller: controller,
                      children: [
                        Icon(
                          Icons.remove,
                          size: 35,
                        ),

                        SizedBox(height: 20,),
                        CustomWidget(),

                        SizedBox(height: MediaQuery.of(context).size.height * 0.04),

                        SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                        // Text(buttonText),
                        Center(
                          child: Text(
                            "1 -3 Jul",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06),

                        Center(
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(150)),
                                border: Border.all(
                                    width: 6,
                                    color: Color.fromRGBO(253, 127, 44, 1))),
                            child: Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: Column(
                                children: [
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(253, 127, 44, 1)),
                                  ),
                                  Text(
                                    "classes",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        )
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}



class CustomWidget extends StatefulWidget {
  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(255, 98, 0, 1),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 3
          )
        ]
      ),
      child: Row(
        children: [

          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: _selectedIndex == 1 ? Colors.white : Color.fromRGBO(255, 98, 0, 1)
                ),
                child: Center(child: Text("Today",style: TextStyle(fontSize:18,fontFamily: "PoppinsRegular",color: _selectedIndex == 1 ? Color.fromRGBO(255, 98, 0, 1) : Colors.white ),),),
              ),
            ),
          ),

          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: _selectedIndex == 2 ? Colors.white : Color.fromRGBO(255, 98, 0, 1)
                ),
                child: Center(child: Text("Week",style: TextStyle(fontSize:18,fontFamily: "PoppinsRegular",color: _selectedIndex == 2 ? Color.fromRGBO(255, 98, 0, 1) : Colors.white ),),),
              ),
            ),
          ),

          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: _selectedIndex == 3 ? Colors.white : Color.fromRGBO(255, 98, 0, 1)
                ),
                child: Center(child: Text("Month",style: TextStyle(fontSize:18,fontFamily: "PoppinsRegular",color: _selectedIndex == 3 ? Color.fromRGBO(255, 98, 0, 1) : Colors.white ),),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
