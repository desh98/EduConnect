import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leon Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // sign user out
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leon Academy'),
        actions: [
          // sign out button
          IconButton(
            onPressed:
                signOut, // Call the signOut function when the button is pressed
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Row(
        children: <Widget>[
          // Sidebar Menu (you can place your sidebar menu code here)
          Container(
            width: 250,
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Classes',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.school, color: Colors.white),
                  onTap: () {
                    // Navigate to Courses Screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Announcements',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.notifications, color: Colors.white),
                  onTap: () {
                    // Navigate to Announcements Screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.person, color: Colors.white),
                  onTap: () {
                    // Navigate to Profile Screen
                  },
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'Welcome to Leon Dashboard!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
