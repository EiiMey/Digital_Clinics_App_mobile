import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool notifications = true;
  bool recommendations = false;
  bool newQuestions = false;
  bool productUpdate = true;
  bool vibration = true;
  bool sound = true; // Moved here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.indigo.shade400,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: IconButton(
            onPressed: () => Navigator.pop(context), // Back action
            icon: Icon(Icons.arrow_back_ios_new, size: 30, color: Colors.white),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            'Notification Settings',
            style: TextStyle(
              fontFamily: 'Poppins-Semibold',
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          buildSwitchTile(
            title: 'Notifications',
            subtitle: 'Notifications are enabled',
            value: notifications,
            onChanged: (val) => setState(() => notifications = val),
          ),
          buildSwitchTile(
            title: 'Send recommendations',
            subtitle: 'Some description',
            value: recommendations,
            onChanged: (val) => setState(() => recommendations = val),
          ),
          buildSwitchTile(
            title: 'New questions',
            subtitle: 'Some description',
            value: newQuestions,
            onChanged: (val) => setState(() => newQuestions = val),
          ),
          buildSwitchTile(
            title: 'Product Update',
            subtitle: 'Some description',
            value: productUpdate,
            onChanged: (val) => setState(() => productUpdate = val),
          ),
          buildSwitchTile(
            title: 'Vibration',
            subtitle: 'Some description',
            value: vibration,
            onChanged: (val) => setState(() => vibration = val),
          ),
          buildSwitchTile(
            title: 'Sound',
            subtitle: 'Some description',
            value: sound,
            onChanged: (val) => setState(() => sound = val),
          ),
        ],
      ),
    );
  }

  Widget buildSwitchTile({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 10, right: 10),
      title: Text(title, style: TextStyle(fontFamily: 'Poppins-Semibold')),
      subtitle: Text(subtitle, style: TextStyle(fontFamily: 'Poppins-Regular'),),
      trailing: Switch(
        value: value,
        activeColor: Colors.white,
        activeTrackColor: Colors.indigo,
        inactiveTrackColor: Colors.grey.shade300,
        onChanged: onChanged,
      ),
    );
  }

}
