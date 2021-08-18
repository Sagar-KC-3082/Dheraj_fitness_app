import 'package:flutter/material.dart';

class Integrations extends StatefulWidget {
  @override
  _IntegrationsState createState() => _IntegrationsState();
}

class _IntegrationsState extends State<Integrations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

        title: Text("Integrations", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),
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
      leading: Icon(Icons.crop_square, size: 50,color: Colors.grey,),
      title: Text("Fitbit", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
        subtitle:Text("Not Connected", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),),
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
                    leading: Icon(Icons.crop_square, size: 50,color: Colors.grey,),
                    title: Text("Strava", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                    subtitle:Text("Not Connected", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),),
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
                    leading: Icon(Icons.crop_square, size: 50,color: Colors.grey,),
                    title: Text("Google Fit", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                    subtitle:Text("Not Connected", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),),
                  )),

            ),
          ),
      ],
    ),
    );
  }
}
