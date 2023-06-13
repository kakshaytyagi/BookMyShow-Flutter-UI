import 'package:flutter/material.dart';


class BottomMenu extends StatefulWidget {
  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 24,
                height: 24,
                child: Image.asset('assets/images/Events/home.jpg', fit: BoxFit.cover),
              ),
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 24,
                height: 24,
                child: Image.asset('assets/images/Events/live.jpg', fit: BoxFit.cover),
              ),
            ],
          ),
          label: 'Event',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 24,
                height: 24,
                child: Image.asset('assets/images/Events/profile.jpg', fit: BoxFit.cover),
              ),
            ],
          ),
          label: 'Profile',
        ),
      ],
    );
  }


}
