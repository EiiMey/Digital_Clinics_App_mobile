import 'package:_113_clinics_app_mobile/about_splase/about_splase.dart';
import 'package:_113_clinics_app_mobile/home_page/card_doctor.dart';
import 'package:_113_clinics_app_mobile/home_page/clinics_page.dart';
import 'package:_113_clinics_app_mobile/home_page/doctor_page.dart';
import 'package:_113_clinics_app_mobile/home_page/find_button.dart';
import 'package:_113_clinics_app_mobile/home_page/home_page.dart';
import 'package:_113_clinics_app_mobile/profiles_layout/personal_account.dart';
import 'package:flutter/material.dart';
import 'log_in_sign_up/log_in.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //about_splase
        '/': (context) => SplaseOne(),
        '/SplaseTwo': (context) => SplaseTwo(),
        '/SplaseThree': (context) => SplaseThree(),
        '/SplaseFour': (context) => SplaseFuor(),
        //about hompage
        '/HomePage': (context) => MyHomePage(),
        '/clinic_page': (context) => ClinicApp(),
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

class BottomMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 117, 117, 117).withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.home, size: 40, color: Colors.indigoAccent),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment, size: 40, color: Colors.grey),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/doctor_page');
                },
                icon: Icon(
                  Icons.medical_services,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month, size: 40, color: Colors.grey),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 25),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonalAccount()),
                  );
                },
                icon: Icon(
                  Icons.person_outline_rounded,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
