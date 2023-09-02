import 'package:flutter/material.dart';

//import 'package:flutter_application22/request2.dart';
import 'package:get/get.dart';

//import 'package:flutter_application22/buttonconfirm.dart';
//import 'package:dropdown_button2/dropdown_button2.dart';

class MyRequest1 extends StatefulWidget {
  const MyRequest1({Key? key}) : super(key: key);

  @override
  _MyRequest1State createState() => _MyRequest1State();
}

const String t = "Confirm";

class _MyRequest1State extends State<MyRequest1> {
  String? valueChoose;
  List listItem = [" Item1", " Item2", " Item3", " Item4"];

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //showAboveButton = true ,
        body: Stack(
          children: [
            Container(
                //height: 10000,
                // width: 10000,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/requestt.png'),
                        fit: BoxFit.cover))),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 550),
                child: Text(
                  'Make a request',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromRGBO(21, 55, 98, 1),
                    //  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: TextButton(
                  onPressed: () {
                    Get.back();
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

            /////////////////////////////////////////////////////
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 138),
                    child: Container(
                        height: 625,
                        width: 370,
                        decoration:
                            BoxDecoration(color: Colors.white.withOpacity(0.2)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              ////////////////////////////////////
                              ///
                              ///
                              ///

                              Padding(
                                padding: const EdgeInsets.only(top: 100),
                                child: Center(
                                  child: Text(
                                    'Title',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color.fromRGBO(21, 55, 98, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 35, top: 20, right: 30),
                                child: SizedBox(
                                  width: 300,
                                  child: TextField(
                                    style: TextStyle(color: Colors.grey),
                                    decoration: InputDecoration(
                                        fillColor:
                                            Color.fromARGB(255, 206, 214, 225),
                                        filled: true,
                                        hintText: "Enter the title",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, left: 40, right: 40, bottom: 50),
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: DropdownButton<String>(
                                      hint: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Select Items:"),
                                      )),
                                      dropdownColor:
                                          Colors.white.withOpacity(0.8),
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey,
                                      ),
                                      iconSize: 36,
                                      isExpanded: true,
                                      underline: SizedBox(),
                                      style: TextStyle(
                                          color: Color.fromRGBO(21, 55, 98, 1),
                                          fontSize: 18),
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
                              )
                            ])))),

            /*    Padding(
              padding: const EdgeInsets.only(top: 710, bottom: 75),
              child: Buttonn(
                onTap: signUserIn,
              ),
            ),*/
            /* Padding(
              padding: const EdgeInsets.only(top: 900),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Color.fromARGB(166, 150, 229, 222), fontSize: 15),
                ),
              ),
            ),*/

            Padding(
                padding: const EdgeInsets.only(top: 710, bottom: 75),
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
                      onPressed: () {},
                      child: Text('Send'),
                    ),
                  ),
                )),
          ],
        ));
  }
}
