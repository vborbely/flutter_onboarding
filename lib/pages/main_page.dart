import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [..._bottomNavIcons()],
      ),
      body: Center(
        child: Text("Main Page"),
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavIcons() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
      BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), title: Text("")),
      BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("")),
    ];
  }
}
