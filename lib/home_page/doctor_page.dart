import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 170,
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

                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search doctor, clinic...",
                      hintStyle: TextStyle(fontSize: 14.0, color: Colors.white),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.white,
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    style: TextStyle(fontSize: 14.0, color: Colors.white),
                    onSubmitted: (value) {
                      print("Searching: $value");
                    },
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
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(Icons.home, size: 46, color: Colors.grey),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment, size: 46, color: Colors.grey),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.medical_services,
                  size: 46,
                  color: Colors.blueAccent,
                ),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month, size: 46, color: Colors.grey),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 25),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_outlined, size: 46, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
