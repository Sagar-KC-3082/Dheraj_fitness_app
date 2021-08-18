import 'package:dance_id/account/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File _image;


  _imgFromCamera() async {
    // ignore: deprecated_member_use
    File image = (await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    ));

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = (await  ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    ));

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Edit Profile", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),
            InkWell(
              onTap: (){},
              child: Text("Save", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
              child: GestureDetector(
                onTap: () {
                  _showPicker(context);
                },
                child: _image != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.file(
                    _image,
                    width: 252,
                    height: 252,
                    fit: BoxFit.fitHeight,
                  ),
                )
                    : Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 243, 245, 1),
                      borderRadius: BorderRadius.circular(150)),
                  width: 119,
                  height: 119,
                  // child: Icon(
                  //   Icons.camera_alt,
                  //   size: 42,
                  //   color: Color.fromRGBO(196, 196, 196, 1),
                  // ),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text("Change Profile Photo", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),)),
          ),
          SizedBox(height: 10,),
          Container(
            color: Color.fromRGBO(242, 243, 245, 1),

            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1,

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Text("Perosnal Information", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),),
                )),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: Text("First Name", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 1,

            height: 51.66,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),

              child: TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter the Email';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: false,

                style: TextStyle(
                  height: 1,

                ),


                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Colors.white, width: 0)

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Colors.white, width: 0)


                  ),
                  hintText:  "Marina",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily:'Poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),

                ),

              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: Text("Last Name", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 1,

            height: 51.66,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),

              child: TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter the Email';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: false,

                style: TextStyle(
                  height: 1,

                ),


                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Colors.white, width: 0)

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Colors.white, width: 0)


                  ),
                  hintText:  "Marina",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily:'Poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),

                ),

              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: Text("Gender", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 1,

            height: 51.66,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),

              child: TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter the Email';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: false,

                style: TextStyle(
                  height: 1,

                ),


                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Colors.white, width: 0)

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Colors.white, width: 0)


                  ),
                  hintText:  "Non-binary",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily:'Poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),

                ),

              ),
            ),
          ),
          Container(
            color: Color.fromRGBO(242, 243, 245, 1),

            child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Text("Account Information", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),),
                )),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("example@gmail.com", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black),),
                InkWell(
                    onTap: (){},
                    child: Text("Change", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),)),

              ],
            ),
          ),
          Expanded(child: SizedBox(height: 20,)),
          Center(
          child: SizedBox(
          width: 311,
    height: 58,
    child: FlatButton(
    color: Color.fromRGBO(59, 59, 59, 1),
    child: Text("NEXT", style: TextStyle(color: Colors.white),),
    shape: RoundedRectangleBorder(side: BorderSide(
    color: Colors.black,
    width: 1,
    style: BorderStyle.solid
    ), borderRadius: BorderRadius.circular(5)),
    onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

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
