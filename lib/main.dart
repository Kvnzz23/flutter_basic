import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Bottomsheet());
  }
}

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Bottom Sheet", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isDismissible: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              builder: (context) {
                return SizedBox(
                  height: 300,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.photo, color: Colors.black),
                        title: Text(
                          "Photo",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.music_note_rounded,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Music",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.video_collection,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Video",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.share, color: Colors.black),
                        title: Text(
                          "Share",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: Icon(Icons.cancel, color: Colors.black),
                        title: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text(
            "SHOW BUTTON SHEET",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
