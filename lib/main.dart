import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appointment.dart';
import 'consulting.dart';
import 'dr.dart';
import 'finished.dart';
import 'prescriptions1.dart';
import 'prescriptions2.dart';
import 'prescriptions3.dart';
import 'record1.dart';
import 'record2.dart';
import 'request1.dart';
import 'sign.dart';
import 'statue.dart';
import 'task1.dart';
import 'task2.dart';
import 'task3.dart';
import 'user.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MySign(),
    getPages: [
      GetPage(name: "/dr", page: () => MyDr()),
      GetPage(name: "/sign", page: () => MySign()),
      GetPage(name: "/finished", page: () => MyFinished()),
      GetPage(name: "/appointment", page: () => MyAppointment()),
      GetPage(name: "/request1", page: () => MyRequest1()),
      GetPage(name: "/user", page: () => MyUser()),
      GetPage(name: "/consulting", page: () => MyConsulting()),
      GetPage(name: "/statue", page: () => MyStatue()),
      GetPage(name: "/record1", page: () => MyRecord1()),
      GetPage(name: "/record2", page: () => MyRecord2()),
      GetPage(name: "/task1", page: () => MyTask1()),
      GetPage(name: "/taask2", page: () => MyTask2()),
      GetPage(name: "/task3", page: () => MyTask3()),
      GetPage(name: "/prescriptions1", page: () => MyPrescriptions1()),
      GetPage(name: "/prescriptions2", page: () => MyPrescriptions2()),
      GetPage(name: "/prescriptions3", page: () => MyPrescriptions3()),
    ],

    /*routes: {
      
      'sign': (context) => MySign(),

      'dr': (context) => MyDr(),

      'request1': (context) => MyRequest1(),

      'appointment': (context) => MyAppointment(),

      'finished': (context) => MyFinished(),

       'user': (context) => MyUser(),
      

      //  'check': (context) => MyCheck(),
      // 'forgot': (context) => MyForgot(),
      // 'request2': (context) => MyRequest2(),
      // 'login': (context) => MyLogin(),
      // 'request': (context) => MyRequest(),
    },*/
  ));
}
