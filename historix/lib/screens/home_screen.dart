import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> events = [
    {"image": "assets/images/brihadeeswarar.jpg", "title": "Brihadeeswarar Temple"},
    {"image": "assets/images/meenakshi.jpg", "title": "Meenakshi Temple"},
    {"image": "assets/images/mahabalipuram.jpg", "title": "Mahabalipuram"},
  ];

  final List<Map<String, String>> posts = [
    {"image": "assets/images/brihadeeswarar.jpg", "title": "Brihadeeswarar Temple", "description": "Explore the ancient Chola architecture."},
    {"image": "assets/images/meenakshi.jpg", "title": "Meenakshi Temple", "description": "A masterpiece of Dravidian art."},
    {"image": "assets/images/mahabalipuram.jpg", "title": "Mahabalipuram", "description": "A UNESCO World Heritage site."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HistoriX")),
      body: SingleChildScrollView(  // FIXES OVERFLOW ISSUE
        child: Column(
          children: [
            // Instagram-style Events Section
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(events[index]["image"]!),
                        ),
                        SizedBox(height: 5),
                        Text(events[index]["title"]!, style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(),

            // Posts Section (Use Expanded to avoid overflow)
            ListView.builder(
              shrinkWrap: true,  // FIXES OVERFLOW ISSUE
              physics: NeverScrollableScrollPhysics(), // FIX SCROLL CONFLICT
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(posts[index]["image"]!, height: 200, width: double.infinity, fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(posts[index]["title"]!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(posts[index]["description"]!),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Image.asset("assets/icons/chatbot_icon.png", width: 30, height: 30),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/explore_icon.png", width: 30, height: 30),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/profile_icon.png", width: 30, height: 30),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
