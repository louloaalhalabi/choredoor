import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

//import 'package:flutter_icons/flutter_icons.dart';
import 'package:image_picker/image_picker.dart';

class MyUser extends StatefulWidget {
  const MyUser({Key? key}) : super(key: key);

  @override
  _MyUserState createState() => _MyUserState();
}

class _MyUserState extends State<MyUser> {
  XFile? image;
  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    setState(() {
      image = img;
    });
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },

                    /* style: ButtonStyle(
                      backgroundColor: Colors.fromRGBO(21, 55, 98, 1)),*/
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
              //     height: 10000,
              //      width: 10000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/sign&check.png'),
                      fit: BoxFit.cover))),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10),
            child: TextButton(
                onPressed: () {
                  //  Get.to(MyRequest2());
                },
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: Color.fromRGBO(21, 55, 98, 1),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Center(
              child: Container(
                height: 640,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 70, left: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 130),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      /* child: const Image (image:AssetImage('assets/istock.jpg'))*/
                                      child: Image(
                                          image:
                                              AssetImage('assets/istock.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 0, left: 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 0, right: 0),
                                          /*  child: ElevatedButton(
                            onPressed: () {
                              myAlert();
                            },*/
                                          child: TextButton(
                                              onPressed: () {},
                                              child: IconButton(
                                                onPressed: () {
                                                  myAlert();
                                                },
                                                icon: Icon(
                                                  Icons.edit,
                                                  size: 25,
                                                  color: Colors.white
                                                      .withOpacity(0.2),
                                                ),
                                              )),
                                          // child: Text('Upload Photo'),
                                        ),
                                        // ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        //if image not null show the image
                                        //if image null show text
                                        image != null
                                            ? Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Image.file(
                                                    //to show image, you type like this.
                                                    File(image!.path),
                                                    fit: BoxFit.cover,
                                                    // width: MediaQuery.of(context).size.width,
                                                    width: 100,
                                                    height: 100,
                                                  ),
                                                ),
                                              )
                                            : Text(
                                                "",
                                                //style: TextStyle(fontSize: 20),
                                              )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 50),
                              child: Center(
                                child: RatingBarIndicator(
                                  rating: 3,
                                  itemCount: 5,
                                  itemSize: 35,
                                  direction: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return const Icon(Icons.star,
                                        color: Colors.amber);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: Text(
                            'Your Name:',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(21, 55, 98, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 5, right: 0),
                          child: SizedBox(
                            width: 500,
                            child: TextField(
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.2),
                                //filled: true,
                                hintText: "Louloa Alhalabi",
                                /* border: OutlineInputBorder(
                             // borderRadius: BorderRadius.circular(10),
                            )*/
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Text(
                            'Phone Number:',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(21, 55, 98, 1),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, right: 0),
                              child: SizedBox(
                                width: 50,
                                child: TextField(
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white.withOpacity(0.2),
                                    //filled: true,
                                    hintText: "+963",
                                    /* border: OutlineInputBorder(
                                 // borderRadius: BorderRadius.circular(10),
                                )*/
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 5, right: 0),
                              child: SizedBox(
                                width: 225,
                                child: TextField(
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white.withOpacity(0.2),
                                    //filled: true,
                                    hintText: " 964789263",
                                    /* border: OutlineInputBorder(
                             // borderRadius: BorderRadius.circular(10),
                            )*/
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Text(
                            'Region:',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(21, 55, 98, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 5, right: 0),
                          child: SizedBox(
                            width: 500,
                            child: TextField(
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.2),
                                //filled: true,
                                hintText: "Syria,Damascus",
                                /* border: OutlineInputBorder(
                             // borderRadius: BorderRadius.circular(10),
                            )*/
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Text(
                            'About:',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(21, 55, 98, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 5, right: 0),
                          child: SizedBox(
                            width: 500,
                            child: TextField(
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.2),
                                //filled: true,
                                hintText:
                                    "Dentist specializing in periodontics mkjk..",
                                /* border: OutlineInputBorder(
                             // borderRadius: BorderRadius.circular(10),
                            )*/
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
