import 'package:_113_clinics_app_mobile/about_splase/support_page.dart';
import 'package:flutter/material.dart';
import 'package:_113_clinics_app_mobile/profiles_layout/personal_account.dart';
import 'package:_113_clinics_app_mobile/profiles_layout/edit_account.dart';
import 'package:_113_clinics_app_mobile/profiles_layout/notification_settings.dart';

class ProfileSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Container(
            color: Colors.indigo.shade400,
            width: double.infinity,
            height: 350,
            padding: EdgeInsets.only(top: 40),
            child: ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonalAccount()),
                  );
                },
              ),
              title: Text(
                'Profile Setting',
                style: TextStyle(
                  fontFamily: 'Poppins-Semibold',
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120, bottom: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/Avatar.png'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tsutsui Ichiha',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins-Semibold',
                        ),
                      ),
                      Text(
                        'Tsutsui@gmail.com',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 14,
                          fontFamily: 'Poppins-Regular',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: buildSettingsItem(
                          Icons.edit,
                          'Account Settings',
                          context,
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: buildSettingsItem(
                          Icons.notifications,
                          'Notifications',
                          context,
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: buildSettingsItem(
                          Icons.help,
                          'Support',
                          context,
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: buildSettingsItem(
                          Icons.shield,
                          'Privacy Policy',
                          context,
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: buildSettingsItem(
                          Icons.logout_outlined,
                          'Log Out',
                          context,
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
    );
  }

  Widget buildSettingsItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Icon(icon, color: Colors.indigo.shade400, size: 30),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins-Semibold',
          fontSize: 18,
          color: Colors.grey.shade700,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 28),
      onTap: () {
        if (title == 'Log Out') {
          showLogoutDialog(context);
        } else if (title == 'Account Settings') {
          // Navigator.pushNamed(context, '/edit-account');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditAccountPage()),
          );
        } else if (title == 'Notifications') {
          // Navigator.pushNamed(context, '/notification-settings');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NotificationPage()),
          );
        } else if (title == 'Support') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportPage()),
          );
        } else if (title == 'Privacy Policy') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Privacy Policy coming soon!')),
          );
        }
      },
    );
  }

  Future showLogoutDialog(BuildContext context) {
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
                    backgroundColor: Colors.indigo.shade50,
                    radius: 40,
                    child: Icon(Icons.logout, color: Colors.blue, size: 40),
                  ),
                ),
                Text(
                  'Log out?',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-Semibold',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Are you sure you want to log-out?',
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
                    onPressed: () {},
                    child: Text(
                      'LOG OUT',
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
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'CANCEL',
                      style: TextStyle(
                        color: Colors.indigo.shade400,
                        fontFamily: 'Poppins-Semibold',
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade50,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.indigo.shade400),
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
