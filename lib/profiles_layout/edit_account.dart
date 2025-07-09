import 'package:flutter/material.dart';
import 'package:_113_clinics_app_mobile/profiles_layout/profile_settings.dart';

class EditAccountPage extends StatefulWidget {
  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(color: Colors.indigo.shade400),
            child: ListTile(
              leading: Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettingsPage(),));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(
                'Edit Account',
                style: TextStyle(
                  fontFamily: 'Poppins-Semibold',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 120),
            child: ListView(
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/images/Avatar.png',
                        ), // Replace with your image asset
                      ),
                      SizedBox(height: 10),
                      OutlinedButton.icon(
                        onPressed: () {
                          // Handle photo change
                        },
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          size: 20,
                          color: Colors.grey.shade600,
                        ),
                        label: Text(
                          'CHANGE PHOTO',
                          style: TextStyle(
                            fontFamily: 'Poppins-Semibold',
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.indigo.shade50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            side: BorderSide(color: Colors.grey.shade600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                buildSectionHeader('Personal Info', onEdit: () {}),
                buildInfoRow('First Name', 'Dontae'),
                buildInfoRow('Last Name', 'Iweobiegbulam'),
                buildInfoRow('Username', 'Iweobiegbulam'),
                buildInfoRow('Phone Number', '+456765898763'),
                buildInfoRow('Location', 'Oscar de la Cavalleria'),
                buildInfoRow('Address', '14 Tottenham Court Road'),

                SizedBox(height: 10),
                buildSectionHeader(
                  'Account Info',
                  onEdit: () {
                    // Handle edit action
                  },
                ),
                buildInfoRow('Email', 'Iweobiegbulam@gmail.com'),
                buildInfoRow('Password', '********'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionHeader(String title, {VoidCallback? onEdit}) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontFamily: 'Poppins-Semibold'),
          ),
          Spacer(),
          if (onEdit != null)
            IconButton(
              icon: Row(
                children: [
                  Icon(Icons.edit, size: 18, color: Colors.grey),
                  SizedBox(width: 5,),
                  Text(
                    'Edit',
                    style: TextStyle(
                      fontFamily: 'Poppins-Semibold',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
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
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150,
                child: Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(),
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins-Semibold',
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Divider(),
        SizedBox(height: 10),
      ],
    );
  }
}
