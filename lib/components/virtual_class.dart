import 'package:dance_id/components/detail_view.dart';
import 'package:flutter/material.dart';

class VirtualClass extends StatefulWidget {
  @override
  _VirtualClassState createState() => _VirtualClassState();
}

class _VirtualClassState extends State<VirtualClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Virtual classes", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),
              InkWell(
                onTap: (){},
                child: Text("Save", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
              )
            ],
          ),
        ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),

              child: Text('Online Barre Virtual classes',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),

              child: Text('Your favorite fitness classes, now online. Discover virtual classes* near you or hop into a live stream across the globe.',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black),)),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    color: Colors.grey,

                  ),
                  width: 29.92,
                  height: 29.93,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Browse local Virtual Classes',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black),),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),

              child: Text('Upcoming virtual classes',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,color: Colors.black),)),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => BussinessDetail()));
              },
              child: Image.asset("images/image 8.png", width: 363.31, height: 374.49,fit: BoxFit.fill,)),
          SizedBox(height: 20,),
          Image.asset("images/image 9.png", width: 363.31, height: 374.49,fit: BoxFit.cover,),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 143.0,


            child: new ListView(
              children: [
                Card(child: new Container(width: 124.0, color: Colors.grey,
                  child: new Text('Yoga',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                Card(child: new Container(width: 124.0,color: Colors.grey,
                  child: new Text('Meditation',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                Card(child: new Container(width: 124.0,color: Colors.grey,
                  child: new Text('Pilates',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                Card(child: new Container(width: 124.0,color: Colors.grey,
                  child: new Text('Barre',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                Card(child: new Container(width: 124.0,color: Colors.grey,
                  child: new Text('Strength',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),

              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
