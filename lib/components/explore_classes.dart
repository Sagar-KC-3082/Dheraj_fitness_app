import 'package:carousel_pro/carousel_pro.dart';
import 'package:dance_id/components/detail_view.dart';
import 'package:dance_id/components/search.dart';
import 'package:dance_id/components/ticket_selling.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'explore_wellness.dart';

class ExploreClasses extends StatefulWidget {
  final int index;
  ExploreClasses({this.index});
  @override
  _ExploreClassesState createState() => _ExploreClassesState();
}

class _ExploreClassesState extends State<ExploreClasses> with SingleTickerProviderStateMixin {
  TabController _tabController ;
  int _index = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();

  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _index = widget.index ?? 0;
    });
    _tabController = TabController(length: 3, vsync: this, initialIndex: _index);
  }

  RangeValues values = RangeValues(4 , 11);
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Container(
        color: Color.fromRGBO(255, 98, 0, 1),
        padding: EdgeInsets.only(top: 20),
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(255, 98, 0, 1),
            // shape: RoundedRectangleBorder(
            //   borderRadius: new BorderRadius.vertical(
            //     bottom: Radius.circular(30),
            //   ),
            // ),
            bottom: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label ,
              indicatorColor: Colors.white,

              tabs: [
                Tab(child: Text('FITNESS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),
                Tab(child: Text('WELLNESS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),
                Tab(child: Text('DANCE', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),

              ],
            ),
            centerTitle: false,
            title: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));

                },
                child: Center(
                  child: Container(
                      height: 52.14,
                      width: MediaQuery.of(context).size.width * 0.9,

                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(7))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: const Text('Anything, Current location...'),
                      )),
                )),
          ),
          body: Builder(builder: (context) => TabBarView(
            controller: _tabController,
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

                              child: Text("CLASSES", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                            ),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Colors.grey[400],
                                width: 2,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(5)),
                            onPressed: (){
                              // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                            },
                          ),
                        ),

                        SizedBox(

                          height: 43.22,
                          child: FlatButton(
                            color: Color.fromRGBO(255, 98, 0, 1),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Text("BUSINESSES", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600,),),
                            ),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Color.fromRGBO(255, 98, 0, 1),
                                width: 2,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(5)),
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ExploreWellness()));


                            },
                          ),
                        ),
                      ],),
                  ),
                  Flexible(child: ListView(
                    children: [
                      SizedBox(height: 10,),
                      Container(

                        color: Colors.white,
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("TODAY FROM 9 AM IST - 9PM IST",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                              height: 53.0,


                              child: new ListView(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(


                                            child: new Column(

                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("S"),
                                                        SizedBox(height: 10,),

                                                        Text("27"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),

                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("M"),
                                                        SizedBox(height: 10,),

                                                        Text("28"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("T"),
                                                        SizedBox(height: 10,),

                                                        Text("29"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("W"),
                                                        SizedBox(height: 10,),

                                                        Text("30"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("T"),
                                                        SizedBox(height: 10,),

                                                        Text("1"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("F"),
                                                        SizedBox(height: 10,),

                                                        Text("2"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(

                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("S"),
                                                        SizedBox(height: 10,),

                                                        Text("3"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),

                                            child: new Column(
                                              children: [
                                                Row(

                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("S"),
                                                        SizedBox(height: 10,),

                                                        Text("4"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),

                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("M"),
                                                        SizedBox(height: 10,),

                                                        Text("5"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("T"),
                                                        SizedBox(height: 10,),

                                                        Text("6"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("W"),
                                                        SizedBox(height: 10,),

                                                        Text("7"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("T"),
                                                        SizedBox(height: 10,),

                                                        Text("8"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("F"),
                                                        SizedBox(height: 10,),

                                                        Text("9"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: new Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text("S"),
                                                        SizedBox(height: 10,),
                                                        Text("10"),

                                                      ],
                                                    ),

                                                  ],
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),


                                ],
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("4am IST",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                  Text("11pm IST",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                            SliderTheme(
                              data: SliderThemeData(
                                activeTrackColor: Colors.deepOrangeAccent,
                                  inactiveTrackColor: Colors.grey,
                                  thumbColor: Colors.white,
                                  activeTickMarkColor: Colors.transparent,
                                inactiveTickMarkColor: Colors.transparent,
                              ),
                              child: Column(
                                children: [
                                  RangeSlider(
                                      values: values,
                                      min: 0,
                                      max: 50,
                                      divisions: 30,

                                      onChanged: (values) => setState(() => this.values = values),)
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),



                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Text("12:30pm", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                          )),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("12:45pm", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("IST", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("(60 MIN)", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PERSONAL TRAINING", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("VIRTUAL INTERVALS WIH..", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("Renu Makal Demo", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("\$10.00", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

                                    Text("DROP-IN", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(

                                height: 32.09,
                                child: FlatButton(
                                  color: Colors.white,
                                  child: Text("BOOK", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                                  shape: RoundedRectangleBorder(side: BorderSide(
                                      color: Colors.grey[400],
                                      width: 2,
                                      style: BorderStyle.solid
                                  ), borderRadius: BorderRadius.circular(5)),
                                  onPressed: () => showSnackBar(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("12:45pm", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("IST", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("(60 MIN)", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PERSONAL TRAINING", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("VIRTUAL INTERVALS WIH..", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("Renu Makal Demo", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("\$10.00", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

                                    Text("DROP-IN", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(

                                height: 32.09,
                                child: FlatButton(
                                  color: Colors.white,
                                  child: Text("WAITLIST", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                                  shape: RoundedRectangleBorder(side: BorderSide(
                                      color: Colors.grey[400],
                                      width: 2,
                                      style: BorderStyle.solid
                                  ), borderRadius: BorderRadius.circular(5)),
                                  onPressed: (){
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("12:45pm", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("IST", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("(60 MIN)", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PERSONAL TRAINING", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("VIRTUAL INTERVALS WIH..", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("Renu Makal Demo", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("\$10.00", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

                                    Text("DROP-IN", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(

                                height: 32.09,
                                child: FlatButton(
                                  color: Colors.white,
                                  child: Text("BOOK", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                                  shape: RoundedRectangleBorder(side: BorderSide(
                                      color: Colors.grey[400],
                                      width: 2,
                                      style: BorderStyle.solid
                                  ), borderRadius: BorderRadius.circular(5)),
                                  onPressed: (){
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("12:45pm", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("IST", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("(60 MIN)", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PERSONAL TRAINING", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("VIRTUAL INTERVALS WIH..", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                    Text("Renu Makal Demo", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("\$10.00", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

                                    Text("DROP-IN", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(

                                height: 32.09,
                                child: FlatButton(
                                  color: Colors.white,
                                  child: Text("BOOK", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                                  shape: RoundedRectangleBorder(side: BorderSide(
                                      color: Colors.grey[400],
                                      width: 2,
                                      style: BorderStyle.solid
                                  ), borderRadius: BorderRadius.circular(5)),
                                  onPressed: (){
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),


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
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text("MASSAGE",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))
                          )
                        ],
                      ),
                    ),

                  ),

                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("ACUPUNCTURE",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            child: Text("MEDITATION",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("NUTRITION",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("CHIROPRACTOR",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                            child: Center(child: Text("NATUROPATHIC MEDICINE",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("PRENATAL",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("PHYSICAL THERAPY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("COACHING/HEALING",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("CYROTHERAPY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("HEATED THERAPY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("REFLEXOLOGY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                ],
              ),
              //BEAUTY
              ListView(
                children: [

                ],
              ),
            ],
          )
          ),
        ),
      ),
    );
  }
  void showSnackBar(context){
    final snackBar = SnackBar(
        backgroundColor: Colors.white,
        content: Container(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PERSONAL TRAINER",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
              Text("VIRTUAL INTERVALS WITH MBVETS",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, color: Colors.black),),
              Text("Renu Makar Demo Renu Makar Loc1",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
              Text("SATURDAY, 3 JUL",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
              Text("12:00 - 1:00pm W/ BRIDGET",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
              Divider(color: Colors.black,),
              Center(child: Text("PLEASE CALL TO BOOK",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),)),
          Expanded(child: SizedBox()),
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            height: 43.22,
            child: FlatButton(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),

                child: Text("CALL BUSINESS", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),),
              ),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.black,
                  width: 2,
                  style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(5)),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => TicketSelling()));

              },
            ),
          )


            ],
          ),
        ));
    Scaffold.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
  }
}
