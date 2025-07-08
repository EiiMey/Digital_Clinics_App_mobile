import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NotificationPage()));
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: Center(
        child: ElevatedButton(
          child: Text("Open Notification Settings"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => NotificationSettingsDialog(),
            );
          },
        ),
      ),
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
