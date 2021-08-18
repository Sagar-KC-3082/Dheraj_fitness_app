import 'package:dance_id/account/settings.dart';
import 'package:dance_id/components/explore_wellness.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      body:  Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: Icon(Icons.settings))
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(20),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sandeep 007",
                                  style: TextStyle(
                                      fontSize: 25,
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
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(253, 127, 44, 1),
                                  borderRadius: BorderRadius.circular(150)),
                              width: 82.24,
                              height: 82.24,
                              // child: Icon(
                              //   Icons.camera_alt,
                              //   size: 42,
                              //   color: Color.fromRGBO(196, 196, 196, 1),
                              // ),
                            ),
                          ],
                        )))
              ],
            ),
            DraggableScrollableSheet(
                builder: (context, controller) => Container(
                      color: Colors.white,
                      child: ListView(
                        controller: controller,
                        children: [
                          Icon(Icons.remove,size: 35,),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),
                          Center(
                              child: Text(
                            "Looking for something to",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )),
                          Center(
                            child: Text(
                              "book?",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),
                          Center(
                            child: Text(
                              "Let’s explore your option",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Center(
                            child: SizedBox(
                              width: 311,
                              height: 58,
                              child: FlatButton(
                                color: Colors.grey[200],
                                child: Text(
                                  "Explore",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.grey[400],
                                        width: 2,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(5)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ExploreWellness()));
                                },
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
