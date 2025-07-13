import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter.app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DoctorProfilePage(),
    );
  }
}

class DoctorProfilePage extends StatefulWidget {
  const DoctorProfilePage({super.key});
  @override
  State<DoctorProfilePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<DoctorProfilePage> {
  final List<Map<String, dynamic>> listButton = [
    {
      'icon': 'assets/icons/png/🎨 IconWorkbadge.png',
      'title': 'Vilid Insurances',
    },
    {
      'icon': 'assets/icons/png/🎨 IconAward.png',
      'title': 'Experience & Qualification',
    },
    {
      'icon': 'assets/icons/png/🎨 IconUser.png',
      'title': 'Personal Information',
    },
    {'icon': 'assets/icons/png/🎨 IconStar.png', 'title': 'Reviews'},
    {
      'icon': 'assets/icons/png/🎨 IconLocationOn.png',
      'title': 'Working Address',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.indigo.shade400,
        leading: Padding(
          padding: EdgeInsets.only(top: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            splashColor: Colors.transparent, // Removes splash effect
            highlightColor: Colors.transparent, // Removes highlight on tap
            hoverColor:
                Colors.transparent, // Removes hover effect (desktop/web)
            splashRadius: 20, // Optional: smaller splash radius
            padding: EdgeInsets.zero, // Optional: remove default padding
            constraints:
                BoxConstraints(), // Optional: remove default constraints
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Doctor\'s Profile',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins-Semibold',
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_outlined,
                size: 34,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade50,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    color: Colors.white,
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.videocam_outlined,
                          color: Colors.indigo.shade400,
                          size: 35,
                        ),
                      ),
                      title: Text(
                        'Video Visit',
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 20,
                          color: Colors.indigo.shade400,
                        ),
                      ),
                      trailing: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          border: Border.all(color: Colors.indigo.shade400),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('assets/icons/png/🎨 Icon Сolor.png'),
                            color: Colors.indigo.shade600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/3)without state.png',
                          ),
                          maxRadius: 90,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Dr. Chikelu Obasea',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ophthalmologist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(Icons.star, size: 30, color: Colors.blue),
                            Icon(Icons.star, size: 30, color: Colors.blue),
                            Icon(Icons.star, size: 30, color: Colors.blue),
                            Icon(Icons.star, size: 30, color: Colors.blue),
                            Icon(Icons.star, size: 30, color: Colors.blue),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(Icons.location_on_outlined),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    'New York',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Location',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 100),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(Icons.flash_on_outlined),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    '20 Year',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    'Experience',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Divider(),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo.shade400,
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: ImageIcon(
                                    AssetImage(
                                      'assets/icons/png/🎨 IconCalender.png',
                                    ),
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    'AVAILABLE TIMING',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 25),
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 15,
                                ),
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '3 Slots Available',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 25,
                                ),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      240,
                                      248,
                                      255,
                                    ),
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('SEE MORE'),
                                      ),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 60),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, top: 25),
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 15,
                                ),
                                child: Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '5 Slots Available',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 25,
                                ),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      240,
                                      248,
                                      255,
                                    ),
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('SEE MORE'),
                                      ),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: listButton.length,
                    itemBuilder: (context, index) {
                      final item = listButton[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          left: 10,
                          right: 10,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 20,
                          right: 20,
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            item['icon']!,
                            width: 24,
                            height: 24,
                            color: Colors.indigo.shade400,
                          ),
                          title: Container(
                            child: Text(
                              item['title']!,
                              style: TextStyle(
                                fontFamily: 'Poppins-Semibold',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          trailing: Container(
                            child: Icon(Icons.arrow_forward_ios, size: 24),
                          ),
                          onTap: () {},
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
