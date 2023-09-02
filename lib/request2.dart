import 'package:flutter/material.dart';

//import 'package:flutter_application22/buttonrequest.dart';
//import 'package:flutter_application22/buttonrequestt.dart';
import 'package:get/get.dart';

class MyRequest2 extends StatefulWidget {
  const MyRequest2({Key? key}) : super(key: key);

  @override
  _MyRequest2State createState() => _MyRequest2State();
}

const String t = "Student";
const String tt = "Patient";

class _MyRequest2State extends State<MyRequest2> {
  void signUserIn() {}

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
                Get.to(MyRequest2());
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

        /////////////////////////////////////////////////////////
        Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 125),
              child: Container(
                  height: 600,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    // boxShadow: [ BoxShadow(blurRadius: 10.0 , offset: Offset(0,5) , color:Colors.black)]
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        /*   Padding(
                          padding: const EdgeInsets.only(top:90, bottom: 30),
                          child: ButtonRequest(onTap:signUserIn,),


                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:20, bottom: 30),
                          child: ButtonRequestt(onTap:signUserIn,),


                        ),*/
                        //  const SizedBox(height: 50),
                      ]))),
        )
      ],
    ));
  }
}
