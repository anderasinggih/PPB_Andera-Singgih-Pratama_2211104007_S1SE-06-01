import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppListScreen(),
    );
  }
}

class AppListScreen extends StatelessWidget {
  void _showPopup(BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Detail"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 8),
              Text(description),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Close", style: TextStyle(color: Colors.green)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App List"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text("Native App", style: TextStyle(color: Colors.blue)),
            onTap: () => _showPopup(context, "Native App", "Android, iOS"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
            title: Text("Hybrid App", style: TextStyle(color: Colors.blue)),
            onTap: () => _showPopup(
              context,
              "Hybrid App",
              "Android, iOS, Web\nJavascript, Dart",
            ),
          ),
        ],
      ),
    );
  }
}
