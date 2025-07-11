import 'package:_113_clinics_app_mobile/profiles_layout/profile_settings.dart';
import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  final List<Map<String, String>> faqs = [
    {'question': 'How to delete account?', 'answer': 'Go to Settings > Delete Account.'},
    {'question': 'How do I delete past visits?', 'answer': 'Go to History > Select visits > Delete.'},
    {'question': "I don't need notifications", 'answer': 'You can turn off notifications in Settings.'},
    {'question': 'How to download your data?', 'answer': 'Go to Settings > Download Data.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.indigo.shade400,
        leading: Padding(
          padding: const EdgeInsets.only(top: 40,left: 10, bottom: 10),
          child: IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettingsPage(),)), // Back action
            icon: Icon(Icons.arrow_back_ios_new, size: 30, color: Colors.white),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            'Support',
            style: TextStyle(
              fontFamily: 'Poppins-Semibold',
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: faqs.length,
        separatorBuilder: (context, index) => Divider(height: 1),
        itemBuilder: (context, index) {
          return ExpansionTile(
            tilePadding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            title: Text(faqs[index]['question']!,style: TextStyle(fontFamily: 'Poppins-Semibold'),),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(faqs[index]['answer']!,style: TextStyle(fontFamily: 'Poppins-Regular'),),
              ),
            ],
            trailing: Icon(Icons.expand_more),
          );
        },
      ),
    );
  }
}
