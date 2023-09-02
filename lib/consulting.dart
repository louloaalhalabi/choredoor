import 'package:flutter/material.dart';
import 'package:flutter_application22/statue.dart';
//import 'package:flutter_application22/dr.dart';
//import 'package:flutter_application22/button.dart';
import 'package:get/get.dart';

class MyConsulting extends StatefulWidget {
  const MyConsulting({Key? key}) : super(key: key);

  @override
  _MyConsultingState createState() => _MyConsultingState();
}

class _MyConsultingState extends State<MyConsulting> {
  String? valueChoose;
  List listItem = [" Item1", " Item2", " Item3", " Item4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [

              Padding(
             padding: const EdgeInsets.only(top: 30 ,left: 0),
              child: TextButton(
                  onPressed: () {
               
                  },
                  child: IconButton(
                    onPressed: () {    Get.back();},
                    icon: Icon(Icons.arrow_back , size: 30, color:Color.fromRGBO(21, 55, 98, 1) ,),
                  )),
            ),
            Padding(
             padding: const EdgeInsets.only(top:20 , left:0  , right:0 ),
              child: Center(
                child: Text(
                  "My Consulting",
                  style: TextStyle(color:Color.fromRGBO(21, 55, 98, 1), fontSize:26  ),
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
                                padding: const EdgeInsets.only(
                                    left: 30, top: 20, right: 30),
                                child: SizedBox(
                                  width: 300,
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.search),
                                        fillColor:
                                            Colors.white,
                                        filled: true,
                                        hintText: "Search..",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                        )),
                                  ),
                                ),
                              ),




                Padding(
                padding: const EdgeInsets.only( top: 0 , bottom: 0),
               child: Container(
                  height: 190,
                  width: 200,
                     child: Row(

                  children: [

              
                        Padding(
                              
                              padding: const EdgeInsets.only(left: 0 , bottom:200  ),
                              child: TextButton(
                              onPressed: () {},
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.account_circle,
                                  size: 80,
                                color: Color.fromRGBO(21, 55, 98, 1),
                                ),
                              )),
                            ),
                         
                        

                           Expanded(child: 
                           Container(
                           // height:10 ,
                            //width:10 ,
                             child: Padding(
                               padding: const EdgeInsets.only(bottom: 10 ,right:80 ),
                               child: Column(
                                 children: [
                                            
                                  Padding(
                                   padding: const EdgeInsets.only(top: 40 ,right: 30),
                                   child: Text('Name: Louloa Alhalabi',
                                                 style: TextStyle(color:Color.fromRGBO(21, 55, 98, 1), fontSize:14 )
                                      ),
                                            ),
                             
                             
                             
                                      Padding(
                                        padding: const EdgeInsets.only(top:10 ,right: 0),
                                        child: Text('Title: Mouth Gums',
                                                 style: TextStyle(color:Color.fromRGBO(105, 180, 130, 1), fontSize:14 ),
                                             
                                                                     ),
                                      ),

                                       Padding(
                                        padding: const EdgeInsets.only(top:10 ,right: 0),
                                        child: Text('Description: Gingivitis',
                                                 style: TextStyle(color:Color.fromRGBO(89, 118, 156, 1), fontSize:14 ),
                                             
                                                                     ),
                                      ),

                              Row(
                                children: [
                                 
                                 
                                 
  
                                  Padding(
                                    padding: const EdgeInsets.only(left:50),
                                    child: TextButton(
                                    onPressed: () {},
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit_calendar,
                                        size: 40,
                                      color: Color.fromRGBO(125, 209, 132, 1),
                                      ),
                                    )),
                                  ),

                                    Padding(
                                    padding: const EdgeInsets.only(left:10),
                                    child: TextButton(
                                    onPressed: () {},
                                    child: IconButton(
                                      onPressed: () {Get.to(MyStatue());},
                                      icon: Icon(
                                        Icons.low_priority,
                                        size: 40,
                                      color: Color.fromRGBO(182, 212, 127, 1),
                                      ),
                                    )),
                                  ),




                                ],
                              ),

                                  
                                  
                                 ],
                               
                               ),
                             ),
                           )
                      ),
                  ],),
               )),
                
              Padding(
                padding: const EdgeInsets.all(0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 30,
                  endIndent: 30,
                  // height: 100,
                  thickness: 2,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  // color: Colors.deepPurple[200],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 30,
                  endIndent: 30,
                  // height: 100,
                  thickness: 2,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  // color: Colors.deepPurple[200],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 30,
                  endIndent: 30,
                  // height: 100,
                  thickness: 2,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  // color: Colors.deepPurple[200],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 30,
                  endIndent: 30,
                  // height: 100,
                  thickness: 2,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  // color: Colors.deepPurple[200],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 30,
                  endIndent: 30,
                  // height: 100,
                  thickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
