import 'package:flutter/material.dart';
import 'package:flutter_application22/component/get&post.dart';
import 'package:flutter_application22/task3.dart';
import 'package:get/get.dart';

class MyTask1 extends StatefulWidget {
  const MyTask1({Key? key}) : super(key: key);

  @override
  _MyTask1State createState() => _MyTask1State();
}

class _MyTask1State extends State<MyTask1> {
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController taskName = TextEditingController();
  TextEditingController taskStatue = TextEditingController();
  TextEditingController startingDate = TextEditingController();
  TextEditingController endDate = TextEditingController();

  GetPost getPost = GetPost();

  tologin() async {
    var response =
        await getPost.postRequest('http://127.0.0.1:8000/api/AddTask', {
      'task_name': taskName.text,
      'description': 'gytftfh',
      'starting_date': startingDate.text,
      'end_date': endDate.text,
      'task_status': taskStatue.text,
    });

    if (response["message"] == "your task has been added successfully ") {
      Get.to(MyTask3());
    } else {
      print("login catch error");
    }
  }

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
                'New Task',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  //  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10),
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

          /////////////////////////////////////////////////////
          Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Container(
                      height: 625,
                      width: 370,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.2)),
                      child: Form(
                          key: formKey,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 20),
                                  child: Text(
                                    'Task_name:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(21, 55, 98, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 10),
                                  child: SizedBox(
                                    width: 300,
                                    child: TextFormField(
                                      controller: taskName,
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                          fillColor: Colors.grey.shade100,
                                          filled: true,
                                          hintText: "",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 20),
                                  child: Text(
                                    'Task_statue:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(21, 55, 98, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 10),
                                  child: SizedBox(
                                    width: 300,
                                    child: TextFormField(
                                      controller: taskStatue,
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                          fillColor: Colors.grey.shade100,
                                          filled: true,
                                          hintText: "",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 20),
                                  child: Text(
                                    'Starting_date:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(21, 55, 98, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 10),
                                  child: SizedBox(
                                    width: 300,
                                    child: TextFormField(
                                      controller: startingDate,
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                          fillColor: Colors.grey.shade100,
                                          filled: true,
                                          hintText: "",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 20),
                                  child: Text(
                                    'End_date:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(21, 55, 98, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 10),
                                  child: SizedBox(
                                    width: 300,
                                    child: TextFormField(
                                      controller: endDate,
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                          fillColor: Colors.grey.shade100,
                                          filled: true,
                                          hintText: "",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.only(left: 0, top: 50),
                                    child: Center(
                                      child: Container(
                                        width: 150,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(21, 55, 98, 1),
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    21, 55, 98, 1),
                                                width: 1),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            //  elevation:0,
                                            primary: Colors.white,
                                          ),
                                          onPressed: () async {
                                            await tologin();
                                          },
                                          child: Text('Save'),
                                        ),
                                      ),
                                    )),

                                /* ],)

                      ),
                    
                      ),*/
                              ])))))
        ],
      ),
    );
  }
}
