
import 'package:Digital_Clinics_App_mobile/about_splase/about_splase.dart';
import 'package:Digital_Clinics_App_mobile/home_page/card_doctor.dart';
import 'package:Digital_Clinics_App_mobile/home_page/clinics_page.dart';
import 'package:Digital_Clinics_App_mobile/home_page/doctor_page.dart';
import 'package:Digital_Clinics_App_mobile/home_page/find_button.dart';
import 'package:Digital_Clinics_App_mobile/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'log_in_sign_up/log_in.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //about_splase
        '/': (context) => MyHomePage(),
        '/SplaseOne': (context) => SplaseOne(),
        '/SplaseTwo': (context) => SplaseTwo(),
        '/SplaseThree': (context) => SplaseThree(),
        '/SplaseFour': (context) => SplaseFuor(),
        //about hompage
        '/clinic_page': (context) => ClinicListScreen(),
        '/doctor_page': (context) => DoctorPage(),
        '/CardDoctor': (context) => DoctorListPage(),
        '/find_page': (context) => FindPage(),
        //about sign up log in
        '/signin': (context) => SignApp(),
        '/confirmation-code': (context) => ConfirmationCodePage(),
        '/reset-password': (context) => ResetPasswordPage(),
        '/new-password': (context) => NewPasswordPage(),
      },
      initialRoute: '/',
    ),
  );
}
