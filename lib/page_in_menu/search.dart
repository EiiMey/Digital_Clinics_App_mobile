import 'package:flutter/material.dart';

void main() {
  runApp(const ClinicSearchApp());
}

class ClinicSearchApp extends StatelessWidget {
  const ClinicSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search',
      home: const SpecialitiesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SpecialitiesPage extends StatelessWidget {
  const SpecialitiesPage({super.key});

  final List<Map<String, String>> specialities = const [
    {'title': 'Radiology', 'count': '18 Specialists'},
    {'title': 'Gynaecology', 'count': '18 Specialists'},
    {'title': 'Neurology', 'count': '18 Specialists'},
    {'title': 'Pulmonology', 'count': '18 Specialists'},
    {'title': 'Oncology', 'count': '18 Specialists'},
    {'title': 'Ophthalmology', 'count': '18 Specialists'},
    {'title': 'Gastroenterology', 'count': '18 Specialists'},
    {'title': 'Urology', 'count': '18 Specialists'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.indigo.shade400,
          elevation: 0,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(top: 40, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Go Back',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Doctors, Clinics ...',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabItem('DOCTORS', false),
                _buildTabItem('SPECIALITIES', true),
                _buildTabItem('CLINICS', false),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.separated(
              itemCount: specialities.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final item = specialities[index];
                return ListTile(
                  title: Text(
                    item['title']!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(item['count']!),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // TODO: Navigate to details
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem(String label, bool isSelected) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.indigo : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        if (isSelected) Container(height: 2, width: 60, color: Colors.indigo),
      ],
    );
  }
}
