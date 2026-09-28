import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('Dialog')),
        body: Center(child: ShowDialog()),
      ),
    );
  }
}

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Ini Judul"),
            content: Text(
              "Ini adalah deskripsi dialog. Kamu bisa melihatnya disini.",
            ),
            actions: [
              ElevatedButton(onPressed: () {}, child: Text("Okaii")),
              ElevatedButton(onPressed: () {}, child: Text("Cancel")),
            ],
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: Text("SHOW DIALOG", style: TextStyle(color: Colors.white)),
    );
  }
}
