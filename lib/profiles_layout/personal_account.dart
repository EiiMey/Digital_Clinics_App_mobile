import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal.Account',
      home: PersonalAccount(),
    ),
  );
}

class PersonalAccount extends StatelessWidget {
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
                        margin: EdgeInsets.only(top: 50),
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
                                    onPressed: () {},
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
                  margin: EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 20),
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
                                      child: Text('USER NAME',style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 24, ),),
                                      onTap: () {},
                                    ),
                                    SizedBox(height: 5,),
                                    GestureDetector(
                                      child: Text('Year old', style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 14),),
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
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Icon(Icons.person_outline, size: 28,),
                                  ),
                                  SizedBox(height: 10,),
                                  GestureDetector(
                                    child: Text(' Saved\nDoctors', style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.grey.shade600,
                                      fontSize: 16,
                                      ),),
                                    onTap: () {
                                      
                                    },
                                  )
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
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Icon(Icons.article_outlined, size: 28,),
                                  ),
                                  SizedBox(height: 10,),
                                  GestureDetector(
                                    child: Text(' Saved\nArticles', style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.grey.shade600,
                                      fontSize: 16,
                                      ),),
                                    onTap: () {
                                      
                                    },
                                  )
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
                                      color: Colors.green.shade300,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Icon(Icons.favorite_border, size: 28,),
                                  ),
                                  SizedBox(height: 10,),
                                  GestureDetector(
                                    child: Text('Health\n Diary', style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.grey.shade600,
                                      fontSize: 16,
                                      ),),
                                    onTap: () {
                                      
                                    },
                                  )
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
                              border: Border.all(color: Colors.indigo, width: 2),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('30%', style: TextStyle(fontFamily: 'Poppins-Semibold', fontSize: 26),),
                                      Text('Refer a friend and get discount', style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 14),),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.indigo[400],
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(Icons.percent_sharp,color: Colors.white, size: 30,),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.calendar_month_outlined, size: 30,),
                                ),
                                title: Text('Appointments', style: TextStyle(fontFamily: 'Poppins-Semibold', fontSize: 18, color: Colors.grey.shade800),),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {
                                  
                                  },
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              SizedBox(height: 10,),
                              Divider(),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.water_drop_outlined, size: 30,),
                                ),
                                title: Text('Pills Reminder', style: TextStyle(fontFamily: 'Poppins-Semibold', fontSize: 18, color: Colors.grey.shade800),),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {
                                  
                                  },
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              SizedBox(height: 10,),
                              Divider(),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.person_outline_rounded, size: 30,),
                                ),
                                title: Text('My Doctors', style: TextStyle(fontFamily: 'Poppins-Semibold', fontSize: 18, color: Colors.grey.shade800),),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {
                                  
                                  },
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              SizedBox(height: 10,),
                              Divider(),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.work_outline_rounded, size: 30,),
                                ),
                                title: Text('Insurance Plan', style: TextStyle(fontFamily: 'Poppins-Semibold', fontSize: 18, color: Colors.grey.shade800),),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {
                                  
                                  },
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              SizedBox(height: 10,),
                              Divider(),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.insert_drive_file_outlined, size: 30,),
                                ),
                                title: Text('EHR Files', style: TextStyle(fontFamily: 'Poppins-Semibold', fontSize: 18, color: Colors.grey.shade800),),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {
                                  
                                  },
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              SizedBox(height: 10,),
                              Divider(),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.credit_card_rounded, size: 30,),
                                ),
                                title: Text('Payment History', style: TextStyle(fontFamily: 'Poppins-Semibold', fontSize: 18, color: Colors.grey.shade800),),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  onPressed: () {
                                  
                                  },
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        )
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
}
