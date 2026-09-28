import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog')),
      body: Center(
        child: ElevatedButton(
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
        ),
      ),
    );
  }
}