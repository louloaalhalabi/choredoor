import 'dart:io';

import 'package:flutter/material.dart';

//import 'package:flutter_application22/button.dart';
//import 'package:flutter_application22/buttonsign.dart';
import 'package:flutter_application22/component/get&post.dart';
import 'package:flutter_application22/dr.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MySign extends StatefulWidget {
  const MySign({Key? key}) : super(key: key);

  @override
  _MySignState createState() => _MySignState();
}

class _MySignState extends State<MySign> {
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GetPost getPost = GetPost();

  tologin() async {
    var response =
        await getPost.postRequest('http://127.0.0.1:8000/api/Studentregister', {
      'name': userName.text,
      'email': email.text,
      'password': password.text,
      'type': valueChoose,
      //'year': value1,
      //'university_card': taskStatue.text,
      'specializations': choose,
    });

    if (response["message"] == "Student signed up successfully.") {
      Get.to(MyDr());
    } else {
      print("login catch error");
    }
  }

  /* var valueChoose = 'Bachelor_Degree';
  var choose = 'تقويم';
  var value1 = 'first';*/

  String? valueChoose;
  String? choose;
  String? valuee;
  List listItem = ["Master_Degree", "Bachelor_Degree"];
  List list = ["1", "2", "3", "4", "5"];
  List item = ["First", "Second", "Third", "Fourth", "Fifth"];

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
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/sign&check.png'),
                      fit: BoxFit.cover))),

          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 435),
            child: Center(
              child: Text(
                'Create new account',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(21, 55, 98, 1),
                ),
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 290),
              child: SizedBox(
                width: 350,
                child: Center(
                  child: TextFormField(
                    controller: userName,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 140),
              child: SizedBox(
                width: 350,
                child: Center(
                  child: TextFormField(
                    controller: email,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                child: Center(
                  child: TextFormField(
                    controller: password,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
            ),
          ),
          /*  Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 160),
              child: SizedBox(
                width: 350,
                child: Center(
                  child: TextField(
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Repeat password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
            ),
          ),*/
          ////////////////////////////////////////////////////
          ///
          /* DropdownButton(
            hint: Text('Select Items:'),
            items: ['Master_Degree', 'Bachelor_Degree']
                .map((e) => DropdownMenuItem(child: Text('$e'), value: e))
                .toList(),
            onChanged: (val) {
              setState(() {
                valueChoose = val!;
              });
            },
            value: valueChoose,
          ),

          DropdownButton(
            hint: Text('Select Items:'),
            items: [
              'جراحة',
              'طب أسنان الأطفال',
              'أمراض الفم',
              'تقويم',
              'لثة',
              'تعويضات المتحركة',
              'تعويضات الثابتة',
              'تجميل',
              'لبية'
            ]
                .map((e) => DropdownMenuItem(child: Text('$e'), value: e))
                .toList(),
            onChanged: (val) {
              setState(() {
                choose = val!;
              });
            },
            value: choose,
          ),

          DropdownButton(
            hint: Text('Select Items:'),
            items: ['first', 'second','third','fourth', 'fifth']
                .map((e) => DropdownMenuItem(child: Text('$e'), value: e))
                .toList(),
            onChanged: (val) {
              setState(() {
                value1 = val!;
              });
            },
            value: value1,
          ),*/

          Padding(
            padding: const EdgeInsets.only(
                top: 270, left: 30, right: 30, bottom: 50),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton<String>(
                  hint: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Select Items:"),
                  )),
                  dropdownColor: Colors.white.withOpacity(0.8),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                      color: Color.fromRGBO(21, 55, 98, 1), fontSize: 18),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue;
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(valueItem),
                      )),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),

/////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(
                top: 410, left: 30, right: 30, bottom: 50),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton<String>(
                  hint: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Select Items:"),
                  )),
                  dropdownColor: Colors.white.withOpacity(0.8),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                      color: Color.fromRGBO(21, 55, 98, 1), fontSize: 18),
                  value: choose,
                  onChanged: (newValue) {
                    setState(() {
                      choose = newValue;
                    });
                  },
                  items: list.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(valueItem),
                      )),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
///////////////////////////////////////////////////////////////////

          Padding(
            padding: const EdgeInsets.only(
                top: 550, left: 30, right: 30, bottom: 50),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton<String>(
                  hint: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Select Items:"),
                  )),
                  dropdownColor: Colors.white.withOpacity(0.8),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                      color: Color.fromRGBO(21, 55, 98, 1), fontSize: 18),
                  value: valuee,
                  onChanged: (newValue) {
                    setState(() {
                      valuee = newValue;
                    });
                  },
                  items: item.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(valueItem),
                      )),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
//////////////////////////////////////////////////////////////////////////////////////

          Padding(
              padding: const EdgeInsets.only(top: 730),
              child: Center(
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(21, 55, 98, 1),
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () async {
                      await tologin();
                    },
                    child: Text('Sign Up'),
                  ),
                ),
              )),

          Padding(
              padding: const EdgeInsets.only(top: 810),
              child: Center(
                child: Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Color.fromARGB(166, 150, 229, 222),
                    ),
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
              )),
/////////////////////////////////////////////////////////////////////////////////////////////////
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 650, left: 160, right: 160),
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
                        Icons.add_a_photo,
                        size: 40,
                        color: Color.fromRGBO(21, 55, 98, 1),
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          //to show image, you type like this.
                          File(image!.path),
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                        ),
                      ),
                    )
                  : Text(
                      "",
                      //style: TextStyle(fontSize: 20),
                    )
            ],
          ),
        ],
      ),
    );
  }
}
