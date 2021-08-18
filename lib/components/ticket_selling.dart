import 'package:flutter/material.dart';

class TicketSelling extends StatefulWidget {
  @override
  _TicketSellingState createState() => _TicketSellingState();
}

class _TicketSellingState extends State<TicketSelling> {
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Event Name", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),
                      Text("Total Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Being the savage", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Color.fromRGBO(253, 127, 44, 1) ),),
                      Text("03", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey  ),),
                      Text("Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("20 June         01:20 pm", style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: Colors.black  ),),
                      Text("D4, D5, D6", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Event Name", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),
                      Text("Total Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Being the savage", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Color.fromRGBO(253, 127, 44, 1) ),),
                      Text("03", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey  ),),
                      Text("Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("20 June         01:20 pm", style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: Colors.black  ),),
                      Text("D4, D5, D6", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Event Name", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),
                      Text("Total Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Being the savage", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Color.fromRGBO(253, 127, 44, 1) ),),
                      Text("03", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey  ),),
                      Text("Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("20 June         01:20 pm", style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: Colors.black  ),),
                      Text("D4, D5, D6", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Event Name", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),
                      Text("Total Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Being the savage", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Color.fromRGBO(253, 127, 44, 1) ),),
                      Text("03", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey  ),),
                      Text("Seats", style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Colors.grey ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("20 June         01:20 pm", style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: Colors.black  ),),
                      Text("D4, D5, D6", style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.black ),),

                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
