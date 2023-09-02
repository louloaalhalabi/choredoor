import 'package:flutter/material.dart';
import 'package:flutter_application22/appointment.dart';
import 'package:flutter_application22/consulting.dart';
import 'package:flutter_application22/request1.dart';
import 'package:flutter_application22/task1.dart';

import 'finished.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:get/get.dart';


class MyDr extends StatefulWidget {
  const MyDr({Key? key}) : super(key: key);

    @override
  _MyDrState createState() => _MyDrState();

}
class _MyDrState extends State<MyDr> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar:  GNav(
        backgroundColor:  Color.fromRGBO(43, 80, 128, 1),
         tabBorderRadius: 100, 
         //  tabBorderRadius.circular(10),
         tabBorder: Border.all(color: Colors.white.withOpacity(0.1), width: 1), 
         tabShadow: [BoxShadow(color: Colors.white.withOpacity(0.1), blurRadius: 1)],
        gap: 6,
       tabs:const[
         GButton(
        icon: Icons.home,
        text: 'Home',
         ),
         GButton(
        icon: Icons.edit_calendar,
        text: 'Calender',
         ),
         GButton(
        icon: Icons.chat_bubble_outline,
        text: 'Chat',
         ),
         GButton(
        icon: Icons.logout_outlined,
        text: 'Logout',
         )
       ]
     ),
      body: Stack(
        children: [
          Container(
           //   height: 10000,
           //   width: 10000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/dr.png'),
                      fit: BoxFit.cover))),

                               Padding(
              padding: const EdgeInsets.only(top:30, left:150 ,right: 150),
              
                child: TextButton(
                    onPressed: () {},
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle,
                        size: 90,
                      color: Colors.white.withOpacity(0.5)
                      ),
                    )),
              ),

                Padding(
                      padding: const EdgeInsets.only(top: 150,left: 130),
                      
                        child: Text(
                          'Dr.Tala Alkhouri',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          //  fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom:160),
                      child: Center(
                        child: Row(
                                          
                                  children:[
                          Padding(
            padding: const EdgeInsets.only(top:30 , left: 30),
            child: Center(
                child: Container(
                  width: 170,
                  height: 150,
             decoration: BoxDecoration(
              color: Color.fromRGBO(201, 206, 211, 1) ,
                  border: Border.all(color: Color.fromARGB(255, 188, 188, 188), width: 1),
                 borderRadius: BorderRadius.circular(10)
                 ),
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                                  ),
                         onPressed: () {Get.to(MyTask1()); },
                         child: Text('My Tasks'),
                                    ),
            ),
          )
          ), 
          SizedBox(width: 10,)  ,  
                                       Padding(
            padding: const EdgeInsets.only(top:30 , right: 30),
            child: Center(
                child: Container(
                  width: 170,
                  height: 150,
             decoration: BoxDecoration(
              color: Color.fromRGBO(201, 206, 211, 1) ,
                  border: Border.all(color: Color.fromARGB(255, 188, 188, 188), width: 1),
                 borderRadius: BorderRadius.circular(10)
                 ),
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                                  ),
                         onPressed: () {Get.to(MyConsulting()); },
                         child: Text('My Consulting'),
                                    ),
            ),
          )
          ),
                        
      
          ],)

                      ),
                    
                      ),
                      
                      
 Padding(
                      padding: const EdgeInsets.only(top: 180),
                      child: Center(
                        child: Row(
                                          
                                  children:[
                          Padding(
            padding: const EdgeInsets.only(top:30 , left: 30),
            child: Center(
                child: Container(
                  width: 170,
                  height: 150,
             decoration: BoxDecoration(
              color: Color.fromRGBO(201, 206, 211, 1) ,
                  border: Border.all(color: Color.fromARGB(255, 188, 188, 188), width: 1),
                 borderRadius: BorderRadius.circular(10)
                 ),
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                                  ),
                         onPressed: () {  Get.to(MyFinished());},
                         child: Text('My Works'),
                                    ),
            ),
          )
          ), 
          SizedBox(width: 10,)  ,  
                                       Padding(
            padding: const EdgeInsets.only(top:30 , right: 30),
            child: Center(
                child: Container(
                  width: 170,
                  height: 150,
             decoration: BoxDecoration(
              color: Color.fromRGBO(201, 206, 211, 1) ,
                  border: Border.all(color: Color.fromARGB(255, 188, 188, 188), width: 1),
                 borderRadius: BorderRadius.circular(10)
                 ),
              child: TextButton(
               
                style: TextButton.styleFrom(
                  //  elevation:0,
                    primary: Colors.white,
                                  ),
                         onPressed: () {Get.to(MyAppointment()); },
                         child: Text('My Patients'),
                                    ),
            ),
          )
          ),
                        
      
          ],)

                      ),
                    
                      ),
                      
    Padding(
         padding: const EdgeInsets.only(top: 580),
          child: Divider(
            color: Color.fromARGB(255, 195, 194, 194),
            indent: 30,
            endIndent: 30,
            height: 100,
            thickness: 2,
        
          ),
        ),




//////////////////////////////////////////////////////////////////////////////////////////


 Padding(
                      padding: const EdgeInsets.only(top: 600),
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
       //   SizedBox(width: 10,)  ,  
                                       Padding(
            padding: const EdgeInsets.only( left: 20),
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
                  //  elevation:0,
                    primary: Colors.white,
                                  ),
                         onPressed: () {Get.to(MyRequest1()); },
                         child: Text('Request'),
                                    ),
            ),
          )
          ),


             Padding(
            padding: const EdgeInsets.only(left: 20),
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
                  //  elevation:0,
                    primary: Colors.white,
                                  ),
                         onPressed: () { },
                         child: Text('Store'),
                                    ),
            ),
          )
          ),            
      
          ],)

                      ),
                    
                      ),

//////////////////////////////////////////////////////////////////////////////////////

 



          
                      ]),
        );
  }
}
