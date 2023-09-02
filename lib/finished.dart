import 'package:flutter/material.dart';

//import 'package:flutter_application22/button.dart';
import 'package:get/get.dart';

class MyFinished extends StatefulWidget {
  const MyFinished({Key? key}) : super(key: key);

  @override
  _MyFinishedState createState() => _MyFinishedState();
}

class _MyFinishedState extends State<MyFinished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 550),
              child: Text(
                'Finished Work',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(21, 55, 98, 1),
                  //  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 10),
            child: TextButton(
                onPressed: () {},
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
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
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Center(
              child: Column(
                children: [
                  Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images2.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images1.jpg'),
                              fit: BoxFit.cover))),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Center(
              child: Text(
                '4th year',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(21, 55, 98, 1),
                  //  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Center(
              child: Text(
                'First semester',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(21, 55, 98, 1),
                  //  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 520),
            child: Divider(
              color: Colors.grey[150],
              indent: 40,
              endIndent: 40,
              height: 100,
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Center(
              child: TextButton(
                  onPressed: () {
                    // Get.to();
                  },
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_outline,
                      size: 35,
                      color: Color.fromRGBO(21, 55, 98, 1),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
