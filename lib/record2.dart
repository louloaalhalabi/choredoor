import 'package:flutter/material.dart';

//import 'package:flutter_application22/button.dart';
import 'package:get/get.dart';

class MyRecord2 extends StatefulWidget {
  const MyRecord2({Key? key}) : super(key: key);

  @override
  _MyRecord2State createState() => _MyRecord2State();
}

class _MyRecord2State extends State<MyRecord2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              // height: 10000,
              // width: 10000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/requestt.png'),
                      fit: BoxFit.cover))),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 550),
              child: Text(
                'Medical Record',
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
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 40),
                              child: Text(
                                'Last_disease_name:',
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
                                      left: 15, top: 5, right: 20),
                                  child: SizedBox(
                                    width: 250,
                                    child: TextField(
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                        fillColor:
                                            Colors.white.withOpacity(0.2),
                                        //filled: true,
                                        hintText: "No thing ",
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
                                    padding:
                                        const EdgeInsets.only(top: 10, left: 0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 40),
                              child: Text(
                                'Current_disease_name:',
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
                                      left: 15, top: 5, right: 20),
                                  child: SizedBox(
                                    width: 250,
                                    child: TextField(
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                        fillColor:
                                            Colors.white.withOpacity(0.2),
                                        //filled: true,
                                        hintText: "No thing ",
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
                                    padding:
                                        const EdgeInsets.only(top: 10, left: 0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 40),
                              child: Text(
                                'General_description:',
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
                                      left: 15, top: 5, right: 20),
                                  child: SizedBox(
                                    width: 250,
                                    child: TextField(
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                        fillColor:
                                            Colors.white.withOpacity(0.2),
                                        //filled: true,
                                        hintText: "No thing ",
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
                                    padding:
                                        const EdgeInsets.only(top: 10, left: 0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 100),
                                child: Center(
                                  child: Container(
                                    width: 150,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(21, 55, 98, 1),
                                        border: Border.all(
                                            color:
                                                Color.fromRGBO(21, 55, 98, 1),
                                            width: 1),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        //  elevation:0,
                                        primary: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: Text('Save'),
                                    ),
                                  ),
                                )),
                          ]))))
        ],
      ),
    );
  }
}
