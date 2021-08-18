import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

        title: Text("Wallet", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Center(child: Text("It looks like you haven’t added", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),)),
          Text("a payment method yet.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text("Store debit, credit or gift cards to make", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
          Text("checking out a breeze.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text("Find Out More", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black,decoration: TextDecoration.underline,),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Center(
            child: SizedBox(
              width: 311,
              height: 58,
              child: FlatButton(
                color: Colors.grey[200],
                child: Text("Add a Card", style: TextStyle(color: Colors.black),),
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
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
