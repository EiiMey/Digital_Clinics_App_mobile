import 'package:flutter/material.dart';
import 'package:_113_clinics_app_mobile/profiles_layout/profile_settings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal.Account',
      home: PersonalAccount(),
      routes: {
        '/personal-account': (context) => PersonalAccount(),
        '/profile-settings': (context) => ProfileSettingsPage(),
      },
      initialRoute:  '/personal-account',
    ),
  );
}

class PersonalAccount extends StatefulWidget {
  @override
  State<PersonalAccount> createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(color: Color(0xFF6673CC)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Title(
                              color: Colors.white,
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Semibold',
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.notifications_none_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/profile-settings');
                                    },
                                    icon: Icon(
                                      Icons.settings_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 120,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/Avatar.png',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      child: Text(
                                        'USER NAME',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          fontSize: 24,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    SizedBox(height: 5),
                                    GestureDetector(
                                      child: Text(
                                        'Year old',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          fontSize: 14,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.shade400,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.person_outline,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    child: Text(
                                      ' Saved\nDoctors',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Regular',
                                        color: Colors.grey.shade600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue.shade300,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.article_outlined,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    child: Text(
                                      ' Saved\nArticles',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Regular',
                                        color: Colors.grey.shade600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.green.shade400,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    child: Text(
                                      'Health\n Diary',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Regular',
                                        color: Colors.grey.shade600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.indigo,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '30%',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Semibold',
                                          fontSize: 26,
                                        ),
                                      ),
                                      Text(
                                        'Refer a friend and get discount',
                                        style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.indigo[400],
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(
                                        Icons.percent_sharp,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.indigo.shade400,
                                    size: 30,
                                  ),
                                ),
                                title: Text(
                                  'Appointments',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semibold',
                                    fontSize: 18,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {},
                                ),
                                onTap: () {},
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.water_drop_outlined,
                                    color: Colors.indigo.shade400,
                                    size: 30,
                                  ),
                                ),
                                title: Text(
                                  'Pills Reminder',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semibold',
                                    fontSize: 18,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {},
                                ),
                                onTap: () {},
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.person_outline_rounded,
                                    color: Colors.indigo.shade400,
                                    size: 30,
                                  ),
                                ),
                                title: Text(
                                  'My Doctors',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semibold',
                                    fontSize: 18,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {},
                                ),
                                onTap: () {},
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.work_outline_rounded,
                                    color: Colors.indigo.shade400,
                                    size: 30,
                                  ),
                                ),
                                title: Text(
                                  'Insurance Plan',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semibold',
                                    fontSize: 18,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {},
                                ),
                                onTap: () {},
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.insert_drive_file_outlined,
                                    color: Colors.indigo.shade400,
                                    size: 30,
                                  ),
                                ),
                                title: Text(
                                  'EHR Files',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semibold',
                                    fontSize: 18,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {},
                                ),
                                onTap: () {},
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.credit_card_rounded,
                                    color: Colors.indigo.shade400,
                                    size: 30,
                                  ),
                                ),
                                title: Text(
                                  'Payment History',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semibold',
                                    fontSize: 18,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {},
                                ),
                                onTap: () {},
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future checkProsonalLog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          content: Container(
            width: 350,
            height: 460,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.green.shade50,
                    radius: 40,
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.lightGreenAccent.shade700,
                      size: 40,
                    ),
                  ),
                ),
                Text(
                  'Success!',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-Semibold',
                    color: Colors.lightGreenAccent.shade700,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'The password is changed',
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'GOT IT',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-Semibold',
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
