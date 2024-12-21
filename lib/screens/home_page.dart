import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _logout() {
    // Implement logout functionality, like navigating back to the Login page
    print("User logged out");
    Navigator.pushReplacementNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
            tooltip: 'Logout',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/Images/kenza.jpg")
                  ),
                  Text(
                    'El amri',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Chat'),
              onTap: () {
                // Handle navigation to Home
                Navigator.pop(context);
                Navigator.popAndPushNamed(context, "/chat");
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text('LLM WITH KENZA'),
              onTap: () {
                // Handle navigation to Home
                Navigator.pop(context);
                Navigator.popAndPushNamed(context, "/llm");
              },
            ),
            Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                // Handle navigation to Profile
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              trailing: const Icon(Icons.chevron_right),
              title: const Text('Fruits tracker'),
              onTap: () {
                // Handle navigation to Settings
                Navigator.pop(context);
                Navigator.popAndPushNamed(context, "/fruits");
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Home Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
