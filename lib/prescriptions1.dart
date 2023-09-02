import 'package:flutter/material.dart';

class MyPrescriptions1 extends StatefulWidget {
  const MyPrescriptions1({Key? key}) : super(key: key);

  @override
  _MyPrescriptions1State createState() => _MyPrescriptions1State();
}

class _MyPrescriptions1State extends State<MyPrescriptions1> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 10),
              child: TextButton(
                  onPressed: () {
                    // Get.to(MyRequest2());
                  },
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color.fromRGBO(21, 55, 98, 1),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: Center(
                child: Text(
                  "Prescriptions",
                  style: TextStyle(
                      color: Color.fromRGBO(21, 55, 98, 1), fontSize: 26),
                ),
              ),
            ),
          ],
        ),
        flexibleSpace: Container(decoration: BoxDecoration()),
        ///////////////////////////////////////////
      ),
      body: Container(
        color: Colors.white,
        child: Scrollbar(
          thickness: 15,
          radius: Radius.circular(25),
          thumbVisibility: true,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search..",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Container(
                        height: 50,
                        child: Text(
                          '1-Pathological Case: Gingivitis',
                          style: TextStyle(
                              color: Color.fromRGBO(21, 55, 98, 1),
                              fontSize: 20),
                        )
                        // color: Colors.deepPurple[200],
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 30),
                    child: Checkbox(
                        value: isChecked,
                        activeColor: Colors.blue,
                        tristate: true,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        }),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  // color: Colors.deepPurple[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 10,
                  endIndent: 10,
                  // height: 100,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                    child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Center(
                          child: Container(
                            width: 110,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(128, 159, 190, 1),
                                border: Border.all(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    width: 1),
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text('New'),
                            ),
                          ),
                        )),
                    //   SizedBox(width: 10,)  ,
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Center(
                          child: Container(
                            width: 110,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(125, 172, 103, 1),
                                border: Border.all(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    width: 1),
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                //  elevation:0,
                                primary: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text('Update'),
                            ),
                          ),
                        )),

                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Center(
                          child: Container(
                            width: 110,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(215, 125, 103, 1),
                                border: Border.all(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    width: 1),
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                //  elevation:0,
                                primary: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text('Delete'),
                            ),
                          ),
                        )),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
