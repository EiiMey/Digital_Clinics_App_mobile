import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


  @override
class DoctorListPage extends StatefulWidget {
  @override
  State<DoctorListPage> createState() => _DoctorListPageState();
}

class _DoctorListPageState extends State<DoctorListPage> {
  int currentIndex = 0;

  final List<Map<String, dynamic>> doctorList = [
    {
      'name': 'Dr Sem Ratana',
      'title': 'Dermatologist',
      'location': 'New York',
      'experience': '20 Years',
      'rating': 4.75,
      'reviews': 12,
      'imageAsset': 'assets/images/doctor1.png',
    },
    {
      'name': 'Sophia Lee',
      'title': 'Dermatologist',
      'location': 'Los Angeles',
      'experience': '15 Years',
      'rating': 4.65,
      'reviews': 18,
      'imageAsset': 'assets/images/doctor2.png',
    },
    {
      'name': 'Dr. Chenda',
      'title': 'Dermatologist',
      'location': 'Phnom Penh',
      'experience': '10 Years',
      'rating': 4.90,
      'reviews': 30,
      'imageAsset': 'assets/images/doctor3.png',
    },
  ];

  void nextDoctor() {
    setState(() {
      if (currentIndex < doctorList.length - 1) currentIndex++;
    });
  }

  void previousDoctor() {
    setState(() {
      if (currentIndex > 0) currentIndex--;
    });
  }

  Widget buildDoctorCard(Map<String, dynamic> doc) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.video_call, color: Colors.blue),
                SizedBox(width: 6),
                Text("Video Visit", style: TextStyle(fontWeight: FontWeight.w500)),
                Spacer(),
                Icon(Icons.bookmark, color: Colors.amber),
              ],
            ),
            SizedBox(height: 12),
            Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(doc['imageAsset']),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(doc['name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(doc['title'], style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, size: 18, color: Colors.blue),
                SizedBox(width: 4),
                Text("${doc['rating']}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                SizedBox(width: 4),
                Text("(${doc['reviews']} reviews)", style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 12),
            Divider(),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.location_on, color: Colors.grey),
                    SizedBox(height: 4),
                    Text(doc['location']),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.flash_on, color: Colors.grey),
                    SizedBox(height: 4),
                    Text(doc['experience']),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _iconButton(Icons.chat, "Chat"),
                _iconButton(Icons.schedule, "Schedule"),
                _iconButton(Icons.person, "Profile"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[50],
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final doc = doctorList[currentIndex];
    return Scaffold(
      backgroundColor: Color(0xFF7269ED),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text('Doctors', style: TextStyle(color: Colors.white)),
        actions: [
          Icon(Icons.filter_alt, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Text("Dermatologists", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
          Text("Within your area", style: TextStyle(color: Colors.white70)),
          SizedBox(height: 12),
          buildDoctorCard(doc),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: previousDoctor,
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              SizedBox(width: 8),
              Text(
                "${currentIndex + 1} / ${doctorList.length}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 8),
              IconButton(
                onPressed: nextDoctor,
                icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ],
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.location_on, color: Colors.white),
            label: Text("View on Map", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
