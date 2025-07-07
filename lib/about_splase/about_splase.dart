import 'package:flutter/material.dart';
import 'dart:async';


class SplaseOne extends StatefulWidget {
  @override
  State<SplaseOne> createState() => _SplaseOneState();
}

class _SplaseOneState extends State<SplaseOne> {
  void initState() {
    super.initState();
    // Wait for 5 seconds then navigate to LoginScreen
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplaseTwo()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
              image: AssetImage('assets/images/logo- full.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class SplaseTwo extends StatefulWidget {
  @override
  State<SplaseTwo> createState() => _SplaseTwoState();
}

class _SplaseTwoState extends State<SplaseTwo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 25, right: 20, top: 70),
              color: Colors.white,
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 25, right: 20, top: 5),
              child: Text(
                'to Digital Clinic.',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 15),
              width: 500,
              decoration: BoxDecoration(),
              child: Text(
                'Far far away, behind the word mountains,\nfar from the countries Vokalia and Consonantia, \nthere live the blind texts.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 120),
              width: 420,
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Group 60.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 35, right: 25),
              child: Row(
                children: [
                  Container(
                    width: 25,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 10,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 10,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SplaseThree');
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        Colors.blue,
                      ),
                      foregroundColor: WidgetStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // optional: keeps button tight to content
                      children: [
                        Text('Next'),
                        SizedBox(width: 8), // spacing between text and icon
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplaseThree extends StatefulWidget {
  @override
  State<SplaseThree> createState() => _SplaseThreeState();
}

class _SplaseThreeState extends State<SplaseThree> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 25, right: 20, top: 70),
              color: Colors.white,
              child: Text(
                'Ask',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 25, right: 20, top: 5),
              child: Text(
                'a Doctor Online.',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 15),
              width: 500,
              decoration: BoxDecoration(),
              child: Text(
                'Far far away, behind the word mountains,\nfar from the countries Vokalia and Consonantia, \nthere live the blind texts.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 120),
              width: 420,
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Group 61.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 35, right: 25),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 25,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 10,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SplaseFour');
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        Colors.blue,
                      ),
                      foregroundColor: WidgetStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // optional: keeps button tight to content
                      children: [
                        Text('Next'),
                        SizedBox(width: 8), // spacing between text and icon
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplaseFuor extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 25, right: 20, top: 70),
              color: Colors.white,
              child: Text(
                'Physician',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 25, right: 20, top: 5),
              child: Text(
                'on Your Doorstep.',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 15),
              width: 500,
              decoration: BoxDecoration(),
              child: Text(
                'Far far away, behind the word mountains,\nfar from the countries Vokalia and Consonantia, \nthere live the blind texts.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 120),
              width: 420,
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Group 62.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 35, right: 25),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 10,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 25,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        Colors.blue,
                      ),
                      foregroundColor: WidgetStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // optional: keeps button tight to content
                      children: [
                        Text('Next'),
                        SizedBox(width: 8), // spacing between text and icon
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
