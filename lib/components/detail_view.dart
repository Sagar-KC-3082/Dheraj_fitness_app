import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BussinessDetail extends StatefulWidget {
  @override
  _BussinessDetailState createState() => _BussinessDetailState();
}

class _BussinessDetailState extends State<BussinessDetail> {
  String _select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                    Text('Barressential',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black),),
                    Text('Colombo, ',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey),)

              ],
            ),
            Column(
              children: [
                Image.asset("images/image 6.png", width: 43.13, height: 43.13,),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Image.asset("images/image 7.png", width: 378.43, height: 243.86,fit: BoxFit.cover,),
          SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Pilates',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black),)),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Text('Virtual CORE Mat Pilates',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(7)),
                border: Border.all(color: Colors.grey,
                )

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: SizedBox(),
                hint: Text("Monday, Jul 12", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,)),
                items: <String>['Monday, Jul 12', "Tuesday, Jul 13", "Wednesday, Jul 14"].map((String value) {
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
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Center(child: Text('No classes for this day.',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.grey),))),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 319.33,
            height: 57.47,
            child: FlatButton(
              color: Color.fromRGBO(59, 59, 59, 1),
              child: Text("BOOK NOW", style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.black,
                  width: 1,
                  style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(5)),
              onPressed: (){
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateAccount1()));

              },
            ),
          ),
          SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Text('About the class',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Text('NOW ONLINE: Pilates is the best method to increase core strength, resolve back pain, balance muscle and create postural alignment. In our Mixed class, we focus on incorporating the fundamental Pilates principles, mastering movement sequences and adding some challenges. Suitable for all ability levels. Not suitable for pregnant mums.',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Text('Location',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Text('094777778953',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Text('514 Thimbirigasyaya Road, Colombo, 00500',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 20,),
          Image.asset("images/Rectangle 146.png", width: 393.4, height: 230.24,fit: BoxFit.cover,),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
