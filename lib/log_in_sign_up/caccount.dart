import 'package:flutter/material.dart';

class CreateAccountApp extends StatefulWidget {
  @override
  State<CreateAccountApp> createState() => _CreateAccountAppState();
}

class _CreateAccountAppState extends State<CreateAccountApp> {
  // bool isToggleSwitch = true;
  int isToggleSwitch = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade400,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/DeWatermark.ai_1751619031674.jpeg',
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.indigo.shade400.withOpacity(0.8),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins-Semibold',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          _buildTab(title: "1. PERSONAL INFO", index: 0),
                          _buildTab(title: "2. HEALTH INFO", index: 1),
                        ],
                      ),
                      Stack(
                        children: [
                          AnimatedAlign(
                            alignment: isToggleSwitch == 0
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            duration: Duration(milliseconds: 300),
                            child: Container(
                              width: 190,
                              height: 4,
                              color: Colors.indigo.shade400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0),
                isToggleSwitch == 0
                    ? PersonalInfoPage(
                        onNext: () {
                          setState(() {
                            isToggleSwitch = 1; // switch to Health Info page
                          });
                        },
                      )
                    : HealthInfoPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab({required String title, required int index}) {
    final isSelected = isToggleSwitch == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isToggleSwitch = index;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.indigo.shade400 : Colors.grey,
              fontFamily: 'Poppins-Semibold',
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInfoPage extends StatefulWidget {
  final VoidCallback onNext;

  PersonalInfoPage({required this.onNext});

  @override
  State<PersonalInfoPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalInfoPage> {
  bool isToggleYear = true;
  bool isToggleDate = true;
  bool isCheckCity = true;
  String userType = 'Patient';
  String gender = 'Female';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              'Complete your profile. Pleass,This info might be useful for your doctor.',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.grey,
                          size: 34,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        child: Row(
                          children: [
                            Icon(Icons.file_upload_outlined, size: 20),
                            SizedBox(width: 10),
                            Text(
                              'UPLOAD PHOTO',
                              style: TextStyle(
                                fontFamily: 'Poppins-Semibold',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.indigo,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('I\'M A', style: labelStyle()),
                SizedBox(height: 10),
                Row(
                  children: [
                    buildToggleButton(
                      'Patient',
                      userType == 'Patient',
                      () => setState(() => userType = 'Patient'),
                    ),
                    SizedBox(width: 10),
                    buildToggleButton(
                      'Doctor',
                      userType == 'Doctor',
                      () => setState(() => userType = 'Doctor'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("FULL NAME", style: labelStyle()),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.grey.shade400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("GENDER", style: labelStyle()),
                SizedBox(height: 10),
                Row(
                  children: [
                    buildToggleButton(
                      'Female',
                      gender == 'Female',
                      () => setState(() => gender = 'Female'),
                    ),
                    SizedBox(width: 10),
                    buildToggleButton(
                      'Male',
                      gender == 'Male',
                      () => setState(() => gender = 'Male'),
                    ),
                    SizedBox(width: 10),
                    buildToggleButton(
                      'Other',
                      gender == 'Other',
                      () => setState(() => gender = 'Other'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("DATE OF BIRTH", style: labelStyle()),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Year',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            color: Colors.grey.shade400,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isToggleYear
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_up,
                            ),
                            onPressed: () {
                              setState(() {
                                isToggleYear = !isToggleYear;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Date',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            color: Colors.grey.shade400,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isToggleDate
                                  ? Icons.calendar_month_outlined
                                  : Icons.calendar_month_rounded,
                            ),
                            onPressed: () {
                              setState(() {
                                isToggleDate = !isToggleDate;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CITY', style: labelStyle()),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'City',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.grey.shade400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    suffixIcon: IconButton(
                      icon: Icon(
                        isCheckCity
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                      ),
                      onPressed: () {
                        setState(() {
                          isCheckCity = !isCheckCity;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ADDRESS', style: labelStyle()),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Address',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.grey.shade400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('EMERGENCY NUMBER', style: labelStyle()),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Emergency number',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.grey.shade400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 30),
            child: ElevatedButton(
              child: Text(
                'NEXT',
                style: TextStyle(
                  fontFamily: 'Poppins-Semibold',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade400,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5.0),
                ),
              ),
              onPressed: widget.onNext,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildToggleButton(String label, bool selected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: selected ? Colors.indigo.shade50 : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: selected ? Colors.indigo : Colors.grey.shade200,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: selected ? Colors.indigo : Colors.grey,
              fontFamily: 'Poppins-Semibold',
            ),
          ),
        ),
      ),
    );
  }

  TextStyle labelStyle() => TextStyle(
    fontSize: 14,
    color: Colors.grey.shade600,
    fontFamily: 'Poppins-Semibold',
  );
}

class HealthInfoPage extends StatefulWidget {
  @override
  State<HealthInfoPage> createState() => _HealthInfoPageState();
}

class _HealthInfoPageState extends State<HealthInfoPage> {
  bool isAllergic = false;
  bool hasIllness = false;
  bool isCheckOne = false;
  bool isCheckTwo = false;
  bool isCheckThree = false;
  String questionType = 'NO';
  String questionTypeTwo = 'NO';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('WEIGHT', style: labelStyle()),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Weight',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.grey.shade400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    suffixIcon: IconButton(
                      icon: Icon(
                        !isCheckOne
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                      ),
                      onPressed: () {
                        setState(() {
                          isCheckOne = !isCheckOne;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('HEIGHT', style: labelStyle()),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Height',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.grey.shade400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    suffixIcon: IconButton(
                      icon: Icon(
                        !isCheckTwo
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                      ),
                      onPressed: () {
                        setState(() {
                          isCheckTwo = !isCheckTwo;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('BLOOD GROUP', style: labelStyle()),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'none',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.grey.shade400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    suffixIcon: IconButton(
                      icon: Icon(
                        !isCheckThree
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                      ),
                      onPressed: () {
                        setState(() {
                          isCheckThree = !isCheckThree;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ALLERGIC REACTION', style: labelStyle()),
                SizedBox(height: 10),
                Row(
                  children: [
                    buildOption(
                      'NO',
                      questionType == 'NO',
                      () => setState(() => questionType = 'NO'),
                    ),
                    SizedBox(width: 10),
                    buildOption(
                      'YES',
                      questionType == 'YES',
                      () => setState(() => questionType = 'YES'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ALLERGIC REACTION', style: labelStyle()),
                SizedBox(height: 10),
                Row(
                  children: [
                    buildOption(
                      'NO',
                      questionTypeTwo == 'NO',
                      () => setState(() => questionTypeTwo = 'NO'),
                    ),
                    SizedBox(width: 10),
                    buildOption(
                      'YES',
                      questionTypeTwo == 'YES',
                      () => setState(() => questionTypeTwo = 'YES'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 55),
            child: ElevatedButton(
              child: Text(
                'CREATE ACCOUNT',
                style: TextStyle(
                  fontFamily: 'Poppins-Semibold',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade400,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/HomePage');
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOption(String text, bool selected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? Colors.indigo.shade50 : Colors.transparent,
            border: Border.all(
              color: selected ? Colors.indigo : Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: selected ? Colors.indigo : Colors.grey,
              fontFamily: 'Poppins-Semibold',
            ),
          ),
        ),
      ),
    );
  }

  TextStyle labelStyle() => TextStyle(
    fontSize: 14,
    color: Colors.grey.shade600,
    fontFamily: 'Poppins-Semibold',
  );
}
