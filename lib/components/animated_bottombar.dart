import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class AnimatedBottomBarExample extends StatefulWidget {
  @override
  _AnimatedBottomBarExampleState createState() =>
      _AnimatedBottomBarExampleState();
}

class _AnimatedBottomBarExampleState extends State<AnimatedBottomBarExample> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Selected Tab: $_selectedIndex',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.deepPurple[400],
      // you can use the molten bar in the scaffold's bottomNavigationBar
      bottomNavigationBar: MoltenBottomNavigationBar(
        barHeight: 50,
        domeCircleSize: 50,
        margin: EdgeInsets.all(20),
        selectedIndex: _selectedIndex,
        // specify what will happen when a tab is clicked
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        // ansert as many tabs as you like
        tabs: [
          MoltenTab(
            icon: Icon(Icons.search),
            selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: Icon(Icons.home),
            selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: Icon(Icons.person),
            selectedColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
