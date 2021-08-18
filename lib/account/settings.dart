import 'package:dance_id/account/calender_syncing.dart';
import 'package:dance_id/account/integrations.dart';
import 'package:dance_id/account/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Settings", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),
            InkWell(
              onTap: (){},
              child: Text("Save", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: (){
              
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: Colors.white,

              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("Account", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                  )),

            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Wallet()));

            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              color: Colors.white,

              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("Wallet", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                  )),

            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Integrations()));

            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              color: Colors.white,

              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("Integrations", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                  )),

            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => CalenderSyncing()));

            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              color: Colors.white,

              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("Calendar syncing", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
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

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("Notification", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
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

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("Contact Us", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
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

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("More", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
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

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Text("Logout", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                  )),

            ),
          ),
        ],
      ),
    );
  }
}
