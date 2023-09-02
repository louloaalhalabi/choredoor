import 'package:flutter/material.dart';

//import 'package:flutter_application22/button.dart';
import 'package:get/get.dart';

class MyRecord1 extends StatefulWidget {
  const MyRecord1({Key? key}) : super(key: key);

  @override
  _MyRecord1State createState() => _MyRecord1State();
}

class _MyRecord1State extends State<MyRecord1> {
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
                      image: AssetImage('assets/requestt.png'),
                      fit: BoxFit.cover))),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 550),
              child: Text(
                'Creat a Record',
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
                              padding: const EdgeInsets.only(left: 35, top: 30),
                              child: Text(
                                'Last_disease_name:',
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
                              padding: const EdgeInsets.only(left: 35, top: 30),
                              child: Text(
                                'Current_disease_name:',
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
                              padding: const EdgeInsets.only(left: 35, top: 30),
                              child: Text(
                                'General_description:',
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

/*Padding(
                      padding: const EdgeInsets.only(top: 100 ,left:50 ),
                      child: Center(
                        child: Row(

                                  children:[
                          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Center(
                child: Container(
                  width: 110,
                  height: 70,
             decoration: BoxDecoration(
              color: Color.fromRGBO(201, 206, 211, 1) ,
                  border: Border.all(color: Color.fromARGB(255, 188, 188, 188), width: 1),
                 borderRadius: BorderRadius.circular(30)
                 ),
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                                  ),
                         onPressed: () { },
                         child: Text('Lab'),
                                    ),
            ),
          )
          ),
       //   SizedBox(width: 10,)  ,  */
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

                            /* ],)

                      ),

                      ),*/
                          ]))))
        ],
      ),
    );
  }
}
