import 'package:dance_id/account/profile.dart';
import 'package:dance_id/components/activity.dart';
import 'package:dance_id/components/detail_view.dart';
import 'package:dance_id/components/explore_classes.dart';
import 'package:dance_id/components/explore_wellness.dart';
import 'package:dance_id/components/favourite.dart';
import 'package:dance_id/components/navscreen.dart';
import 'package:dance_id/components/search.dart';
import 'package:dance_id/components/virtual_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(255, 98, 0, 1),
            centerTitle: false,
            title: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));
              },
              child: Container(
                // height: 52.14,
                width: MediaQuery.of(context).size.width ,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 12),
                    child:  Text('Anything, Current location...',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: "PoppinsRegular"),),
                  ))
            ),

        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey[200],
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: FlatButton(
                        color: Color.fromRGBO(255, 98, 0, 1),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
                          child: Text("FITNESS", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400,fontFamily: "PoppinsRegular"),),
                        ),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Color.fromRGBO(255, 98, 0, 1),
                            width: 2,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(5)),
                        onPressed: (){
                          Get.offAll(BottomNavScreen(index: 1,tabIndex: 0,));
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                        },
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: FlatButton(
                        color: Colors.teal[600],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),

                          child: Text("WELLNESS", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400,fontFamily: "PoppinsRegular"),),
                        ),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Colors.teal[600],
                            width: 2,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(5)),
                        onPressed: (){
                          Get.offAll(BottomNavScreen(index: 1,tabIndex: 1,));
                          // Navigator.push(context,MaterialPageRoute(builder: (context) {return ExploreClasses(index: 1,);}));
                        },
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: FlatButton(
                        color: Colors.purple[600],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
                          child: Text("DANCE", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400,fontFamily: "PoppinsRegular",),),
                        ),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Colors.purple[600],
                            width: 2,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(5)),
                        onPressed: (){
                          Get.offAll(BottomNavScreen(index: 1,tabIndex: 2,));
                          // Navigator.push(context,MaterialPageRoute(builder: (context) {return ExploreClasses(index: 2,);}));
                        },
                      ),
                    ),
                  ),
                ],),
            ),
            Flexible(child: ListView(
              children: [
                // SizedBox(height: 10,),
                // Center(child: Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Text("Your Favourite", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                // )),
                // SizedBox(height: 10,),
                //
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 10,),
                //   padding: EdgeInsets.all(8),
                //
                //   color: Colors.white,
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Text("Start finding your favourite businesses today", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                //           Icon(Icons.favorite, color: Colors.red,),
                //         ],
                //       ),
                //       Align(
                //           alignment: Alignment.bottomRight,
                //           child: Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Text("EXPLORE", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                //           ))
                //     ],
                //   ),
                // ),

                SizedBox(height: 10,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Deals to get Started", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,fontFamily: "PoppinsRegular"),),
                )),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
                  child: Text("Find great introductory offer from the best locations in fitness, wellness and dance", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,fontFamily: "PoppinsRegular"),textAlign: TextAlign.center,),
                ),


                SizedBox(height: 10,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      image: AssetImage("images/dance2.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child: Text("Intro Offer", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700,fontFamily: "PoppinsRegular",color: Colors.white),)),
                      SizedBox(height: 20,),
                      SizedBox(

                        height: 36.46,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("EXPLORE", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                          },
                        ),
                      ),

                    ],

                  ),
                ),
                SizedBox(height: 30,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sweat from home!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,fontFamily: "PoppinsRegular"),),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
                  child: Text("Stay in safe and support your favourite studios", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,fontFamily: "PoppinsRegular"),textAlign: TextAlign.center,),
                ),
                SizedBox(height: 10,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                          image: AssetImage("images/gym1.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child: Text("Virtual Classes", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700,fontFamily: "PoppinsRegular",color: Colors.white),)),
                      SizedBox(height: 20,),
                      SizedBox(

                        height: 36.46,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("EXPLORE", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => VirtualClass()));

                          },
                        ),
                      ),



                    ],

                  ),
                ),
                SizedBox(height: 30,),

                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Your Workouts, Your Way", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,fontFamily: "PoppinsRegular"),),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
                  child: Text("With the new combined list, find classes that fit your life", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,fontFamily: "PoppinsRegular"),textAlign: TextAlign.center,),
                ),

                SizedBox(height: 10,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                          image: AssetImage("images/yoga1.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child: Text("Discover Classes", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700,fontFamily: "PoppinsRegular",color: Colors.white),)),
                      SizedBox(height: 20,),
                      SizedBox(

                        height: 36.46,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("EXPLORE", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                          },
                        ),
                      ),



                    ],

                  ),
                ),
                SizedBox(height: 30,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Explore Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                )),


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomContainer(text: "Strength",imageUrl: "images/strength.jpg",),
                      CustomContainer(text: "Yoga",imageUrl: "images/yoga.jpg",),
                      CustomContainer(text: "Pilates",imageUrl: "images/pilates.jpg",),
                      CustomContainer(text: "Meditation",imageUrl: "images/meditaion.jpg",),
                      CustomContainer(text: "Barre",imageUrl: "images/barre.jpg",),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

              ],
            ))
          ],
        ),
      ),
    );
  }

}


class CustomContainer extends StatelessWidget {

  final String imageUrl;
  final String text;
  CustomContainer({this.imageUrl,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 120,
      width: MediaQuery.of(context).size.width*0.33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fill)
      ),
      child: Center(
        child: Text(text,style: TextStyle(fontFamily: "PoppinsBold",color: Colors.white,fontSize: 20),),
      ),
    );
  }
}







