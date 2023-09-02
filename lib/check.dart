import 'package:flutter/material.dart';
//import 'package:flutter_application22/button.dart';

class MyCheck extends StatefulWidget {
  const MyCheck({Key? key}) : super(key: key);

    @override
  _MyCheckState createState() => _MyCheckState();

}
class _MyCheckState extends State<MyCheck> {

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
                  image: AssetImage('assets/sign&check.png'),
                      fit: BoxFit.cover))),
      
          ],
      ),
    );
  }
}
