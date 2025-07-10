import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage(), debugShowCheckedModeBanner: false));
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/mother1.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 48, 1, 255).withOpacity(0.8),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 130,
                child: Text(
                  'HomePage',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 130,
                right: 25,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/find_page');
                  },
                  icon: Icon(Icons.search, size: 46, color: Colors.white),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/nopage_page');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 6,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/emergency.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Emergency',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Short Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 28,
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/doctor_page');
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 85, top: 25),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/doctor 1.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 75, top: 25),
                                child: Text(
                                  'Doctor',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Short Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/clinic_page');
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 85, top: 25),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/clinic.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 75, top: 25),
                                child: Text(
                                  'Clinics',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Short Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 85, top: 25),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/specialities.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 45, top: 25),
                                child: Text(
                                  'Specialities',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Short Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 85, top: 25),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/labs 2.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 75, top: 25),
                                child: Text(
                                  'Labs',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Short Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 85, top: 25),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/insurance.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 45, top: 25),
                                child: Text(
                                  'Insurance',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Short Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 85, top: 25),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/articles.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0, top: 25),
                                child: Text(
                                  'Related Articles',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Short Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                onPressed: () {},
                icon: Icon(Icons.home, size: 40, color: Colors.indigoAccent),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment, size: 40, color: Colors.grey),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/doctor_page');
                },
                icon: Icon(
                  Icons.medical_services,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),

            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month, size: 40, color: Colors.grey),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 25),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_outline_rounded, size: 40, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _toggleButtonMenu(IconData icon, String title, BuildContext context) {
  //   return Container(
  //     width: 200,
  //     height: 200,
  //     margin: EdgeInsets.only(left: 10, top: 10),
  //     child: ElevatedButton(
  //       onPressed: () {
  //         Navigator.pushNamed(context, '/doctor_page');
  //       },
  //       style: ElevatedButton.styleFrom(
  //         elevation: 2,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //       ),
  //       child: Column(
  //         children: [
  //           Container(
  //             margin: EdgeInsets.only(right: 85, top: 25),
  //             width: 50,
  //             height: 50,
  //             decoration: BoxDecoration(
  //               image: DecorationImage(
  //                 image: AssetImage('assets/images/doctor 1.png'),
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ),
  //           Container(
  //             margin: EdgeInsets.only(right: 75, top: 25),
  //             child: Text('Doctor', style: TextStyle(fontSize: 20)),
  //           ),
  //           Container(
  //             margin: EdgeInsets.only(right: 25),
  //             child: Text(
  //               'Short Description',
  //               style: TextStyle(fontSize: 14, color: Colors.grey),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
