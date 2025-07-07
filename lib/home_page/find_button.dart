// import 'package:clinec_app_mobile/home_page.dart';
import 'package:flutter/material.dart';
// import 'home_page.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/': (context) => FindPage(),
//         '/Home_Page': (context) => MyHomePage(),
//         '/find_page': (context) => FindPage(),
//       },
//       initialRoute: '/',
//     ),
//   );
// }

class FindPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.only(left: 10, top: 15),
            width: double.infinity,
            height: 135,
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(
                    255,
                    117,
                    117,
                    117,
                  ).withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HomePage',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search doctor, clinic...",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.white,
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                        onSubmitted: (value) {
                          print("Searching: $value");
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        // Add search logic here
                      },
                      icon: Icon(Icons.search, size: 30, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Main Sections',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 120,
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/doctor_page');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 10),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/doctor 1.png'),
                              SizedBox(height: 8),
                              Text(
                                'Doctor',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 120,
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                              left: 30,
                              right: 30,
                            ),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/clinic.png'),
                              SizedBox(height: 8),
                              Text(
                                'Clinic ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 120,
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 15, bottom: 15),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/specialities.png'),
                              SizedBox(height: 8),
                              Text(
                                'Specialities',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 120,
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 10),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/labs 2.png'),
                              SizedBox(height: 8),
                              Text(
                                'Labs',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 120,
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 15, bottom: 15),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/insurance.png'),
                              SizedBox(height: 8),
                              Text(
                                'Insurance',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 120,
                        height: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 15, bottom: 15),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/emergency.png'),
                              SizedBox(height: 8),
                              Text(
                                'Emergency',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      'Hot Themes',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    height: 180,
                    padding: EdgeInsets.only(left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/doctor001.png'),
                          ),
                          SizedBox(width: 10),
                          Image(
                            image: AssetImage('assets/images/doctor001.png'),
                          ),
                          SizedBox(width: 10),
                          Image(
                            image: AssetImage('assets/images/doctor001.png'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          'Hot Themes',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),
                        TextButton(onPressed: () {}, child: Text('See All')),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/doctor002.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/doctor002.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 117, 117, 117).withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.home, size: 46, color: Colors.indigoAccent),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment, size: 46, color: Colors.grey),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/doctor_page');
                },
                icon: Icon(
                  Icons.medical_services,
                  size: 46,
                  color: Colors.blueAccent,
                ),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month, size: 46, color: Colors.grey),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 25),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_outlined, size: 46, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
