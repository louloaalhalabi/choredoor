import 'package:flutter/material.dart';
//import 'package:flutter_application22/button.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

const String tLogin = "Login";

class _MyLoginState extends State<MyLogin> {
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
            // height: 10000,
            // width: 10000,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login.png'), fit: BoxFit.cover))),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 500,
              width: 375,
              decoration: BoxDecoration(
                  color: Color.fromARGB(236, 255, 253, 253),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(top: 40),
              child: Column(
                // shrinkWrap: true,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(21, 55, 98, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 40),
                    child: Text(
                      'User name or email:',
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
                            hintText: "email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ),

                  /////////////////////////
                  ///
                  ///
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 30),
                    child: Text(
                      'Password:',
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
                            hintText: "password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 41.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /*  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: Button(
                      onTap: signUserIn,
                    ),
                  ),*/
                  //    const SizedBox(height: 50),
                  //////////////////////////////////////////////////

                  /*
                          shape:RoundedRectangleBorder(),
                          foregroundColor: Color.fromRGBO(246, 242, 242, 1),
                          backgroundColor: Color.fromRGBO(21, 55, 98, 1),
                        */
                  Center(
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 700),
          child: Center(
            child: Text(
              'Sign up',
              style: TextStyle(
                  color: Color.fromARGB(166, 150, 229, 222), fontSize: 15),
            ),
          ),
        ),
      ]),
    );
  }
}
