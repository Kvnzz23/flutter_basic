import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              child: Text(
                "DASHBOARD MENU",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(leading: Icon(Icons.home), title: Text("Home")),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
