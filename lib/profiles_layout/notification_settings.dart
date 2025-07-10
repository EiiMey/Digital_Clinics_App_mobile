import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.indigo.shade400,
        leadingWidth: 80,
        leading: Stack(
          children: [
            Positioned(
              left: 10,
              bottom: 10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        title: Stack(
          children: [Positioned(bottom: 10, child: Text('Notification'))],
        ),
      ),
      body: Stack(children: [SingleChildScrollView(child: Container())]),
    );
  }
}

class NotificationSettingsDialog extends StatefulWidget {
  @override
  _NotificationSettingsDialogState createState() =>
      _NotificationSettingsDialogState();
}

class _NotificationSettingsDialogState
    extends State<NotificationSettingsDialog> {
  bool notificationsEnabled = true;
  bool sendRecommendations = false;
  bool newQuestions = false;
  bool productUpdate = true;
  bool vibration = true;
  bool sound = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.notifications, color: Colors.deepPurple),
          SizedBox(width: 10),
          Text("Notification Settings"),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildSwitchTile(
              title: "Notifications",
              subtitle: "Notifications are enabled",
              value: notificationsEnabled,
              onChanged: (val) => setState(() => notificationsEnabled = val),
            ),
            buildSwitchTile(
              title: "Send recommendations",
              subtitle: "Some description",
              value: sendRecommendations,
              onChanged: (val) => setState(() => sendRecommendations = val),
            ),
            buildSwitchTile(
              title: "New questions",
              subtitle: "Some description",
              value: newQuestions,
              onChanged: (val) => setState(() => newQuestions = val),
            ),
            buildSwitchTile(
              title: "Product Update",
              subtitle: "Some description",
              value: productUpdate,
              onChanged: (val) => setState(() => productUpdate = val),
            ),
            buildSwitchTile(
              title: "Vibration",
              subtitle: "Some description",
              value: vibration,
              onChanged: (val) => setState(() => vibration = val),
            ),
            buildSwitchTile(
              title: "Sound",
              subtitle: "Some description",
              value: sound,
              onChanged: (val) => setState(() => sound = val),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
        ElevatedButton(
          child: Text("Save"),
          onPressed: () {
            // Handle save logic here
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Widget buildSwitchTile({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      activeColor: Colors.deepPurple,
      onChanged: onChanged,
    );
  }
}
