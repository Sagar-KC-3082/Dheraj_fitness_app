import 'package:dance_id/components/explore_wellness.dart';
import 'package:dance_id/components/navscreen.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Color.fromRGBO(255, 98, 0, 1),
        padding: EdgeInsets.only(top: 20),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(255, 98, 0, 1),

            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab ,
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text('BUSINESSES', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),
                Tab(child: Text('CLASS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),
                Tab(child: Text('STAFF', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),

              ],
            ),
            centerTitle: true,
            title: Text("FAVOURITES",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white),)
          ),
          body: TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Icon(Icons.favorite_border)),
                  SizedBox(height: 10,),
                  Text("It's okay to lay favourites", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Tap the heart on any business listing and we'll save them there for", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("faster access. ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                  Center(
                    child: SizedBox(
                      width: 330,
                      height: 58,
                      child: FlatButton(
                        color: Colors.grey[200],
                        child: Text("EXPLORE BUSINESSES", style: TextStyle(color: Colors.black),),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Colors.grey[400],
                            width: 2,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(5)),
                        onPressed: (){

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => NavScreen()));



                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Icon(Icons.favorite_border)),
                  SizedBox(height: 10,),
                  Text("It's okay to lay favourites", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Tap the heart on any business listing and we'll save them there for", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("faster access. ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                  Center(
                    child: SizedBox(
                      width: 330,
                      height: 58,
                      child: FlatButton(
                        color: Colors.grey[200],
                        child: Text("EXPLORE BUSINESSES", style: TextStyle(color: Colors.black),),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Colors.grey[400],
                            width: 2,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(5)),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => NavScreen()));



                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Icon(Icons.favorite_border)),
                  SizedBox(height: 10,),
                  Text("It's okay to lay favourites", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Tap the heart on any business listing and we'll save them there for", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("faster access. ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                  Center(
                    child: SizedBox(
                      width: 330,
                      height: 58,
                      child: FlatButton(
                        color: Colors.grey[200],
                        child: Text("EXPLORE BUSINESSES", style: TextStyle(color: Colors.black),),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Colors.grey[400],
                            width: 2,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(5)),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => NavScreen()));

                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
