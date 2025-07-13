import 'package:Digital_Clinics_App_mobile/home_page/home_page.dart';
import 'package:flutter/material.dart';

class Article {
  final String title;
  final String time;
  final String image;
  final int likes;

  Article({
    required this.title,
    required this.time,
    required this.image,
    required this.likes,
  });
}

class RelatedArticlesPage extends StatelessWidget {
  final List<String> tags = ['#ALL', '#COVID-19', '#PANDEMIC', '#HEALTH'];

  final List<Article> trendingStories = [
    Article(
      title: 'A small river named Duden',
      time: '2 hours ago',
      image: 'assets/images/Clinic_shutterstock_1768533362-770x433.jpg',
      likes: 155,
    ),
    Article(
      title: 'Health Workers in Pandemic',
      time: '3 hours ago',
      image: 'assets/images/Clinic_shutterstock_1768533362-770x433.jpg',
      likes: 200,
    ),
    Article(
      title: 'COVID-19 Impact Worldwide',
      time: '4 hours ago',
      image: 'assets/images/Clinic_shutterstock_1768533362-770x433.jpg',
      likes: 310,
    ),
    Article(
      title: 'COVID-19 Impact Worldwide',
      time: '4 hours ago',
      image: 'assets/images/Clinic_shutterstock_1768533362-770x433.jpg',
      likes: 310,
    ),
    Article(
      title: 'COVID-19 Impact Worldwide',
      time: '4 hours ago',
      image: 'assets/images/Clinic_shutterstock_1768533362-770x433.jpg',
      likes: 310,
    ),
  ];

  final List<Map<String, dynamic>> featureStories = [
    {
      'image': 'assets/images/部落格：生活新知-預防疾病，你不可不知的篩檢重要性-scaled.jpg',
      'title': 'The Mountains Beyond',
      'time': '3 Min Read',
      'likes': 120,
    },
    {
      'image':
          'assets/images/346105713_195602900052582_1208603070350864200_n-683x1024.jpg',
      'title': 'Life in the Time of COVID',
      'time': '5 Min Read',
      'likes': 245,
    },
    {
      'image': 'assets/images/DeWatermark.ai_1751619031674.jpeg',
      'title': 'Life in the Time of COVID',
      'time': '5 Min Read',
      'likes': 245,
    },
    {
      'image': 'assets/images/DeWatermark.ai_1751619031674.jpeg',
      'title': 'Life in the Time of COVID',
      'time': '5 Min Read',
      'likes': 245,
    },
    {
      'image': 'assets/images/DeWatermark.ai_1751619031674.jpeg',
      'title': 'Life in the Time of COVID',
      'time': '5 Min Read',
      'likes': 245,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          title: Text(
            'Related Articles',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins-Semibold',
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.indigo,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.indigo,
            labelStyle: TextStyle(fontFamily: 'Poppins-Semibold'),
            tabs: [
              Tab(text: 'TODAY'),
              Tab(text: 'WEEK'),
              Tab(text: 'MONTH'),
            ],
          ),
        ),
        body: TabBarView(
          children: List.generate(3, (_) => buildTabContent(context)),
        ),
      ),
    );
  }

  Widget buildTabContent(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: tags
                  .map(
                    (tag) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(
                        label: Text(tag),
                        labelStyle: TextStyle(fontFamily: 'Poppins-Regular'),
                        backgroundColor: tag == '#ALL'
                            ? Colors.indigo.shade100
                            : Colors.grey.shade200,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 20),
          rowHeader('Featured Stories'),
          SizedBox(
            width: double.infinity,
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featureStories.length,
              itemBuilder: (context, index) {
                final story = featureStories[index];
                return featuredStoryCard(
                  image: story['image'],
                  title: story['title'],
                  time: story['time'],
                  likes: story['likes'],
                );
              },
            ),
          ),
          SizedBox(height: 24),
          rowHeader('Trending Stories'),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: trendingStories.length,
            itemBuilder: (context, index) {
              final article = trendingStories[index];
              return trendingStoryItem(article);
            },
          ),
        ],
      ),
    );
  }

  Widget rowHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text('See All', style: TextStyle(color: Colors.indigo)),
      ],
    );
  }

  Widget featuredStoryCard({
    required String image,
    required String title,
    required String time,
    required int likes,
  }) {
    return Container(
      width: 220,
      margin: EdgeInsets.only(right: 12, top: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              image,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.timer, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(time, style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 8),
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                Text('2 hours ago', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border, size: 18),
                        SizedBox(width: 4),
                        Text(likes.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.share, size: 18),
                        SizedBox(width: 12),
                        Icon(Icons.bookmark_border, size: 18),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget trendingStoryItem(Article article) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              article.image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(article.time, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
