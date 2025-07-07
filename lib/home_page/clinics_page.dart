import 'package:flutter/material.dart';



class ClinicApp extends StatelessWidget {
  const ClinicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinics',
      debugShowCheckedModeBanner: false,
      home: ClinicListScreen(),
    );
  }
}

class ClinicListScreen extends StatelessWidget {
  final List<Map<String, String>> clinics = [
    {
      'name': 'Khema Clinic & Maternity',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
    {
      'name': 'Central Hospital',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
    {
      'name': 'Naga Clinic',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
    {
      'name': 'Raffles Medical Phnom Penh',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
    {
      'name': 'U-Care Medical Clinicc',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
    {
      'name': 'Sen Sok International University Hospital',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
    {
      'name': 'Sunrise Japan Hospital Phnom Penh',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
    {
      'name': 'Sihanouk Hospital Center of HOPE',
      'distance': '68km away',
      'address': '987 Blaise Drive Suite 420',
      'image':
          'https://via.placeholder.com/60', // Replace with your asset or network image
      'rating': '4.7'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinics'),
        backgroundColor: const Color(0xFF6A6FE9),
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.location_on),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: clinics.length,
        itemBuilder: (context, index) {
          final clinic = clinics[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(clinic['image']!),
                        radius: 25,
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              clinic['name']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              clinic['distance']!,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEF0FD),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xFF6A6FE9),
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              clinic['rating']!,
                              style: const TextStyle(
                                color: Color(0xFF6A6FE9),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 18,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          clinic['address']!,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
