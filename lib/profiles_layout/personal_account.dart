import 'package:flutter/material.dart';

class PersonalAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Text('Hello world'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
