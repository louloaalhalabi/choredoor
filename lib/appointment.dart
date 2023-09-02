import 'package:flutter/material.dart';
//import 'package:flutter_application22/request2.dart';
//import 'package:flutter_application22/button.dart';
import 'package:get/get.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({Key? key}) : super(key: key);

  @override
  _MyAppointmentState createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
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
                   // Get.to(MyRequest2());
                  },
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back , size: 30, color:Color.fromRGBO(21, 55, 98, 1) ,),
                  )),
            ),
            Padding(
             padding: const EdgeInsets.only(top:20 , left:0  , right:40 ),
              child: Center(
                child: Text(
                  "My Patients",
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
              /* Center(
               child: Padding(
                          padding: const EdgeInsets.only(bottom: 550),
                          child: Text(
                            'Your appointments',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromRGBO(21, 55, 98, 1),
                            //  fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
             ),
          
            Padding(
             padding: const EdgeInsets.only(top: 50 ,left: 10),
              child: TextButton(
                  onPressed: () {
                    Get.to(MyRequest2());
                  },
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back , size: 35, color:Color.fromRGBO(21, 55, 98, 1) ,),
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
        */
              ///////////////////////////////
              ///
              /*
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:   Container(
            height: 150,
            color: Colors.deepPurple[200],
          ),
        ),
         */

              /*     Padding(
             padding: const EdgeInsets.only(top: 20 ,right: 300),
              child: TextButton(
                  onPressed: () {
                    Get.to(MyRequest2());
                  },
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back , size: 35, color:Color.fromRGBO(21, 55, 98, 1) ,),
                  )),
            ),
         Center(
               child: Padding(
                          padding: const EdgeInsets.only(top:10),
                          child: Text(
                            'Your appointments',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromRGBO(21, 55, 98, 1),
                            //  fontWeight: FontWeight.bold,
                            ),
                          ),
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
            ),*/
              ////////////////////////////////////////////////////////////////////////
             /* Padding(
                padding: const EdgeInsets.only( top: 30),
               child: Container(
                  height: 130,
                  width: 200,
             // color: Colors.yellow,
                child: Row(

                  children: [

              
                        Padding(
                          padding: const EdgeInsets.only(left: 0 , bottom: 110),
                          child: TextButton(
                          onPressed: () {},
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.account_circle,
                              size: 70,
                            color: Color.fromRGBO(21, 55, 98, 1),
                            ),
                          )),
                        ),
                        

                           Expanded(child: 
                           Container(
                           // height:10 ,
                            //width:10 ,
                             child: Column(
                               children: [
                                
                                /* Padding(
                                   padding: const EdgeInsets.only(left: 30 , top: 50),
                                   child: Container(
                                    height:50 ,
                                    width:50 ,
                                   color: Colors.blueGrey,
                                    child:Text('Name: Louloa Alhalabi',
                                           style: TextStyle(color:Color.fromRGBO(21, 55, 98, 1), fontSize:18 ),
                                       ),)),*/
                           
                                      Row(
                                        children: [
                                          
                                Padding(
                                 padding: const EdgeInsets.only(top: 40 ,left: 30),
                                 child: Text('Name: Louloa Alhalabi',
                                               style: TextStyle(color:Color.fromRGBO(21, 55, 98, 1), fontSize:14 )
                                    ),
                                          ),
                                                     Padding(
                                                padding: const EdgeInsets.only(left: 40 , right: 0 ,top:25),
                              child: Container(
                                width: 90,
                                height: 50,
                              // color: Colors.cyan,
                                child: Padding(
                                padding: const EdgeInsets.only(left: 5 , right: 0 ,top: 0),
                                    child: DropdownButton<String>(
                                           /* hint: Center(
                                                child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(""),
                                            )),*/
                                            dropdownColor:
                                            Colors.white.withOpacity(0.8),
                                            icon: Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.grey,
                                            ),
                                            iconSize: 40,
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            style: TextStyle(
                                                color: Color.fromRGBO(21, 55, 98, 1),
                                                fontSize: 10),
                                            value: valueChoose,
                                            onChanged: (newValue) {
                                              setState(() {
                                                valueChoose = newValue;
                                              });
                                            },
                                            items: listItem.map((valueItem) {
                                              return DropdownMenuItem<String>(
                                                value: valueItem,
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(valueItem),
                                                )),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                              ),
                                                     ),
                               
                                        ],
                                      ),
                           
                           
                           
                           
                                    Padding(
                                      padding: const EdgeInsets.only(top:10 ,right: 90),
                                      child: Text('Pathological Case: Gingivitis',
                                               style: TextStyle(color:Color.fromRGBO(21, 55, 98, 1), fontSize:14 ),
                                           
                                                                   ),
                                    ),
                                
                               ],
                             
                             ),
                           )
                           
                           
                     
              
                           
                           
                           
                           )
                       
                        /*    Padding(
                      padding: const EdgeInsets.only(left: 0 ,top: 0),
                             child: Text('Pathological Case:Mouth Gums',
                               style: TextStyle(color:Color.fromRGBO(21, 55, 98, 1), fontSize:10  ),
                           ),),*/
                   
                      // color: Colors.deepPurple[200],
                 
                  ],
                ),
  
              )), 
              */

            /*  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[150],
                  indent: 30,
                  endIndent: 30,
                  // height: 100,
                  thickness: 2,
                ),
              ),*/

                   /*  Padding(
              padding: const EdgeInsets.only(left: 0 , right: 0 ,top:20),
                child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.cyan,
                                child: Padding(
                                padding: const EdgeInsets.only(left: 150 , right: 150 ,top: 15),
                                    child: DropdownButton<String>(
                                           /* hint: Center(
                                                child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(""),
                                            )),*/
                                            dropdownColor:
                                            Colors.white.withOpacity(0.8),
                                            icon: Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.grey,
                                            ),
                                            iconSize: 40,
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            style: TextStyle(
                                                color: Color.fromRGBO(21, 55, 98, 1),
                                                fontSize: 10),
                                            value: valueChoose,
                                            onChanged: (newValue) {
                                              setState(() {
                                                valueChoose = newValue;
                                              });
                                            },
                                            items: listItem.map((valueItem) {
                                              return DropdownMenuItem<String>(
                                                value: valueItem,
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(valueItem),
                                                )),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                              ),
              ),
*/
   

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
                  height: 160,
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
                                        child: Text('Pathological Case: Gingivitis',
                                                 style: TextStyle(color:Color.fromRGBO(21, 55, 98, 1), fontSize:14 ),
                                             
                                                                     ),
                                      ),

                              Row(
                                children: [
                                 
                                 
                                  Padding(
                                    padding: const EdgeInsets.only(top:0),
                                    child: TextButton(
                                    onPressed: () {},
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.assignment_ind,
                                        size: 40,
                                      color: Color.fromRGBO(132, 174, 230, 1),
                                      ),
                                    )),
                                  ),

  
                                  Padding(
                                    padding: const EdgeInsets.only(left:10),
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
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.insert_drive_file_outlined,
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
