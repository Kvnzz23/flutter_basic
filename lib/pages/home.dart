import 'package:flutter/material.dart';
import './product.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("HomePage", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProductPage()));
          },
          child: Text("Next Page >>>", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}