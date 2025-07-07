import 'package:flutter/material.dart';

class DoctorProfiles extends StatelessWidget {
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
          )
        ],
      ),
    );
  }
}
