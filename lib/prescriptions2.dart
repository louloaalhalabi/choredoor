import 'package:flutter/material.dart';

//import 'package:flutter_application22/button.dart';
import 'package:get/get.dart';

class MyPrescriptions2 extends StatefulWidget {
  const MyPrescriptions2({Key? key}) : super(key: key);

  @override
  _MyPrescriptions2State createState() => _MyPrescriptions2State();
}

class _MyPrescriptions2State extends State<MyPrescriptions2> {
  //var gender1='1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
              // height: 10000,
              // width: 10000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/sign&check.png'),
                      fit: BoxFit.cover))),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 540),
              child: Text(
                'New Prescriptions',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
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
                  padding: const EdgeInsets.only(top: 150),
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
                              padding: const EdgeInsets.only(left: 35, top: 20),
                              child: Text(
                                'Disese Name:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(21, 55, 98, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 10),
                              child: SizedBox(
                                width: 300,
                                child: TextField(
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 20),
                              child: Text(
                                'Starting Date:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(21, 55, 98, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 10),
                              child: SizedBox(
                                width: 300,
                                child: TextField(
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 20),
                              child: Text(
                                'End Date:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(21, 55, 98, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 10),
                              child: SizedBox(
                                width: 300,
                                child: TextField(
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 20),
                              child: Text(
                                'Description:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(21, 55, 98, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 10),
                              child: SizedBox(
                                width: 300,
                                child: TextField(
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ),

                            /*  DropdownButton(items: ['1','2'].map((e) => DropdownMenuItem(child: Text('$e') , value:e))
                  .toList(),

                   onChanged: (val){setState(() {
                     gender1= val!;
                   });},
                   value: gender1,
                   ),
                  */

                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 50),
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

                            /* ],)

                      ),

                      ),*/
                          ]))))
        ],
      ),
    );
  }
}
