import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome to the Home Screen!'),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Settings Screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Go to Settings'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the About Screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.info),
      ),
    );
  }
}