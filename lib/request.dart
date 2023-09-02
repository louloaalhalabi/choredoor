import 'package:flutter/material.dart';

//import 'package:flutter_application22/button.dart';
import 'package:get/get.dart';

class MyRequest extends StatefulWidget {
  const MyRequest({Key? key}) : super(key: key);

  @override
  _MyRequestState createState() => _MyRequestState();
}

class _MyRequestState extends State<MyRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /* Container(
             // height: 10000,
             // width: 10000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/Nrequestt.png'),
                  fit: BoxFit.cover))),

*/
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 550),
              child: Text(
                'New request',
                style: TextStyle(
                  fontSize: 30,
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
                  Get.to(MyRequest());
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
            child: Divider(
              color: Colors.grey[150],
              indent: 30,
              endIndent: 30,
              height: 100,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
