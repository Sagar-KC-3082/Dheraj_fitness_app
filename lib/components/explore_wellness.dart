import 'package:dance_id/components/explore_classes.dart';
import 'package:dance_id/components/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ExploreWellness extends StatefulWidget {

  final int index;
  ExploreWellness({this.index});

  @override
  _ExploreWellnessState createState() => _ExploreWellnessState();
}

class _ExploreWellnessState extends State<ExploreWellness> with SingleTickerProviderStateMixin {

  TabController _tabController ;
  int _currentTabIndex ;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentTabIndex = widget.index ?? 0;
    });
    _tabController =  TabController(length: 3, vsync: this,initialIndex: _currentTabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Color.fromRGBO(255, 98, 0, 1),
        padding: EdgeInsets.only(top: 20),
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(255, 98, 0, 1),
            bottom:  TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label ,
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text('FITNESS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),)),
                Tab(child: Text('WELLNESS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),)),
                Tab(child: Text('DANCE', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),)),

              ],
            ),
            centerTitle: false,
            title: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));
                },
                child: Center(
                  child:  Container(
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
                )),
          ),
          body: TabBarView(
            controller:  _tabController,
            children: [
              //FITNESS
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      SizedBox(

                        height: 43.22,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),

                            child: Text("CLASSES", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.grey[400],
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ExploreClasses()));
                          },
                        ),
                      ),

                      SizedBox(

                        height: 43.22,
                        child: FlatButton(
                          color: Color.fromRGBO(255, 98, 0, 1),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text("BUSINESSES", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Color.fromRGBO(255, 98, 0, 1),
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                          },
                        ),
                      ),
                    ],),
                  ),
                  Flexible(child: ListView(
                    children: [
                      Container(
                        height: 140.0,
                        child: Carousel(
                          autoplay: true,
                          images: [
                            InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Train Your Brain (monthly)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                                           Expanded(child: SizedBox(height: 20,)),
                                           Text("Nourish the Brain Institute", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),)

                                         ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(150)),
                                                color: Color.fromRGBO(255, 98, 0, 1),
                                              ),
                                              child: Center(child: Text("₹ 49.97",style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular" ),)),
                                            ),
                                            Text("INTRO", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),),
                                            Text("OFFER", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                            InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Train Your Brain (monthly)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                                            Expanded(child: SizedBox(height: 20,)),
                                            Text("Nourish the Brain Institute", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),)

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(150)),
                                                color: Color.fromRGBO(255, 98, 0, 1),
                                              ),
                                              child: Center(child: Text("₹ 49.97",style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular" ),)),
                                            ),
                                            Text("INTRO", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),),
                                            Text("OFFER", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular" ),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                            InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Train Your Brain (monthly)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                                            Expanded(child: SizedBox(height: 20,)),
                                            Text("Nourish the Brain Institute", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),)

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(150)),
                                                color: Color.fromRGBO(255, 98, 0, 1),
                                              ),
                                              child: Center(child: Text("₹ 49.97",style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular" ),)),
                                            ),
                                            Text("INTRO", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),),
                                            Text("OFFER", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),

                          ],

                          autoplayDuration: Duration(seconds: 3),
                          dotSize: 5.0,
                          dotIncreaseSize: 2,
                          dotIncreasedColor: Colors.orangeAccent,
                          dotColor: Colors.grey,
                          dotBgColor: Colors.transparent,
                          indicatorBgPadding: 20.0,
                        ),
                      ),

                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                            child: Text("SEE ALL", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,fontFamily: "PoppinsRegular"),),
                          )),


                      FitnessContainer(),
                      FitnessContainer(),
                      FitnessContainer(),
                      FitnessContainer(),
                      FitnessContainer(),
                      FitnessContainer(),

                    ],
                  ))

                ],
              ),
              //WELLNESS
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  GridContainer(image: "images/massage.jpg",text: "Massage",),
                  GridContainer(image: "images/accupunture.png",text: "Accupunture",),
                  GridContainer(image: "images/meditation.jpg",text: "Meditation",),
                  GridContainer(image: "images/nutrition.jpg",text: "Nutrition",),
                  GridContainer(image: "images/chiro.jpg",text: "Chiropractor",),
                  GridContainer(image: "images/naturo.jpg",text: "Naturopathic Medicine",),
                  GridContainer(image: "images/massage.jpg",text: "Massage",),
                  GridContainer(image: "images/accupunture.png",text: "Accupunture",),
                  GridContainer(image: "images/meditation.jpg",text: "Meditation",),
                  GridContainer(image: "images/nutrition.jpg",text: "Nutrition",),
                  GridContainer(image: "images/chiro.jpg",text: "Chiropractor",),
                  GridContainer(image: "images/naturo.jpg",text: "Naturopathic Medicine",),
                  // GridContainer(image: "images/massage.jpg",text: "Massage",),
                  // GridContainer(image: "images/massage.jpg",text: "Massage",),
                  // GridContainer(image: "images/massage.jpg",text: "Massage",),
                  // GridContainer(image: "images/massage.jpg",text: "Massage",),

                ],
              ),
              //BEAUTY
              ListView(
                children: [

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class GridContainer extends StatelessWidget {

  final String image;
  final String text;
  GridContainer({this.text,this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: AssetImage(image),maxRadius: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("HEATED THERAPY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular")),
            )
          ],
        ),
      ),
    );
  }
}



class FitnessContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nourish the brain Institute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,fontFamily: "PoppinsRegular"),),
                Text("Downtown", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey,fontFamily: "PoppinsRegular"),),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.deepOrangeAccent,),
                    Icon(Icons.star,color: Colors.deepOrangeAccent,),
                    Icon(Icons.star,color: Colors.deepOrangeAccent,),
                    Icon(Icons.star,color: Colors.deepOrangeAccent,),
                    Icon(Icons.star,color: Colors.deepOrangeAccent,),
                    Text("    5 reviews", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                  ],
                )
              ],
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/yoga.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
