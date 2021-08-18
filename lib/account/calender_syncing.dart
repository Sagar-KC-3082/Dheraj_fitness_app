import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalenderSyncing extends StatefulWidget {
  @override
  _CalenderSyncingState createState() => _CalenderSyncingState();
}

class _CalenderSyncingState extends State<CalenderSyncing> {
  String _select;
  bool _switchValue=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

        title: Text("Calender Syncing", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              color: Colors.white,

              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,

                  child: ListTile(

                    title: Text("Calendar", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                    subtitle:Text("Add your schedule to a calendar", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),),
                  trailing: CupertinoSwitch(
                    activeColor: Colors.grey[300],
                    trackColor: Colors.grey[300],
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;

                      });
                    },
                  ),
                  )),

            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              color: Colors.white,

              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,

                  child: ListTile(

                    title: Text("Select Calendar", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                    subtitle:Text("Chose which calendar to use", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),),
                  )),

            ),
          ),

        ],
      ),
    );
  }
}
