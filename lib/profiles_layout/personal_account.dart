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
                  height: 320,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(color: Color(0xFF6673CC)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60),
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
                                      size: 26,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.settings_outlined,
                                      color: Colors.white,
                                      size: 26,
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
                  margin: EdgeInsets.only(top: 120),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: [
                        Row(
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
                        SizedBox(height: 20,),
                        Divider(),
                        SizedBox(height: 20,),
                        Row(
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
                                    color: Colors.indigo.shade300,
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
