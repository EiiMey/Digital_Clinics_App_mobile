import 'package:Digital_Clinics_App_mobile/home_page/home_page.dart';
import 'package:Digital_Clinics_App_mobile/profiles_layout/doctor_profiles.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Column(
              children: [
                SizedBox(height: 45),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'All Doctors',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.filter_alt, size: 36, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(
                      Icons.location_on_outlined,
                      size: 36,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search doctor, clinic...",
                        hintStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.white,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      onSubmitted: (value) {
                        print("Searching: $value");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Doctors List',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text('Card Views', style: TextStyle(fontSize: 16)),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/CardDoctor');
                        },
                        icon: Icon(Icons.badge),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 165,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DoctorProfilePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                    'assets/images/Group 62.png',
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),

                              Container(
                                width: 200,
                                child: Column(
                                  children: [
                                    Text(
                                      'Dr.Sem Ratana',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'ophthalmologist',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '📍 68 km Away',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 20),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.star_rate,
                                  size: 28,
                                  color: Colors.amberAccent,
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.video_chat, size: 32),
                              Text('  Video Visit'),
                              Spacer(),
                              Icon(Icons.date_range_sharp, size: 32),
                              Icon(Icons.comment_sharp, size: 32),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 165,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                    'assets/images/Group 62.png',
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),

                              Container(
                                width: 200,
                                child: Column(
                                  children: [
                                    Text(
                                      'Dr.Sem Ratana',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'ophthalmologist',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '📍 68 km Away',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 20),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.star_rate,
                                  size: 28,
                                  color: Colors.amberAccent,
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.video_chat, size: 32),
                              Text('  Video Visit'),
                              Spacer(),
                              Icon(Icons.date_range_sharp, size: 32),
                              Icon(Icons.comment_sharp, size: 32),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 165,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                    'assets/images/Group 62.png',
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),

                              Container(
                                width: 200,
                                child: Column(
                                  children: [
                                    Text(
                                      'Dr.Sem Ratana',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'ophthalmologist',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '📍 68 km Away',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 20),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.star_rate,
                                  size: 28,
                                  color: Colors.amberAccent,
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.video_chat, size: 32),
                              Text('  Video Visit'),
                              Spacer(),
                              Icon(Icons.date_range_sharp, size: 32),
                              Icon(Icons.comment_sharp, size: 32),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 165,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                    'assets/images/Group 62.png',
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),

                              Container(
                                width: 200,
                                child: Column(
                                  children: [
                                    Text(
                                      'Dr.Sem Ratana',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'ophthalmologist',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '📍 68 km Away',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 20),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.star_rate,
                                  size: 28,
                                  color: Colors.amberAccent,
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.video_chat, size: 32),
                              Text('  Video Visit'),
                              Spacer(),
                              Icon(Icons.date_range_sharp, size: 32),
                              Icon(Icons.comment_sharp, size: 32),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 165,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                    'assets/images/Group 62.png',
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),

                              Container(
                                width: 200,
                                child: Column(
                                  children: [
                                    Text(
                                      'Dr.Sem Ratana',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'ophthalmologist',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '📍 68 km Away',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 20),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.star_rate,
                                  size: 28,
                                  color: Colors.amberAccent,
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.video_chat, size: 32),
                              Text('  Video Visit'),
                              Spacer(),
                              Icon(Icons.date_range_sharp, size: 32),
                              Icon(Icons.comment_sharp, size: 32),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 165,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                    'assets/images/Group 62.png',
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),

                              Container(
                                width: 200,
                                child: Column(
                                  children: [
                                    Text(
                                      'Dr.Sem Ratana',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'ophthalmologist',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '📍 68 km Away',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 20),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.star_rate,
                                  size: 28,
                                  color: Colors.amberAccent,
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.video_chat, size: 32),
                              Text('  Video Visit'),
                              Spacer(),
                              Icon(Icons.date_range_sharp, size: 32),
                              Icon(Icons.comment_sharp, size: 32),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(context: context),
    );
  }
}
