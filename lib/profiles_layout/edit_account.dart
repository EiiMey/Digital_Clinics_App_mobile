import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EditAccountPage(),
  ));
}

class EditAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text('Edit Account', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'), // Replace with your image asset
                ),
                SizedBox(height: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    // Handle photo change
                  },
                  icon: Icon(Icons.camera_alt, size: 18),
                  label: Text('CHANGE PHOTO'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          buildSectionHeader('Personal Info', onEdit: () {
            // Handle edit action
          }),
          buildInfoRow('First Name', 'Dontae'),
          buildInfoRow('Last Name', 'Iweobiegbulam'),
          buildInfoRow('Username', 'Iweobiegbulam'),
          buildInfoRow('Phone Number', '+456765898763'),
          buildInfoRow('Location', 'Oscar de la Cavalleria'),
          buildInfoRow('Address', '14 Tottenham Court Road'),

          SizedBox(height: 20),
          buildSectionHeader('Account Info', onEdit: () {
            // Handle edit action
          }),
          buildInfoRow('Email', 'Iweobiegbulam@gmail.com'),
          buildInfoRow('Password', '********'),
        ],
      ),
    );
  }

  Widget buildSectionHeader(String title, {VoidCallback? onEdit}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Spacer(),
          if (onEdit != null)
            IconButton(
              icon: Icon(Icons.edit, size: 18, color: Colors.grey),
              onPressed: onEdit,
            ),
        ],
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
        SizedBox(height: 4),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Text(value, style: TextStyle(fontSize: 14)),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}