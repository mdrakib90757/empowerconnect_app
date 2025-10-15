import 'package:empowerconnect_app/core/utils/color.dart';
import 'package:empowerconnect_app/feature/community/view/community_screen.dart';
import 'package:empowerconnect_app/feature/emergency_mode/view/emergency_mode_screen.dart';
import 'package:empowerconnect_app/feature/empower_hub/view/empower_hub_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../feature/request_assistance/view/request_assistance_screen.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    communityScreen(),
    RequestAssistanceScreen(),
    EmpowermentHubScreen(),
    EmergencyHelpScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        backgroundColor: APPColor.backgroundColor,
        selectedItemColor: APPColor.primaryColor,
        unselectedItemColor: APPColor.whiteColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        type: BottomNavigationBarType.fixed,

        items: <BottomNavigationBarItem>[
          // 1. Community Hub
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
              size: _selectedIndex == 0 ? 28 : 24,
              color: _selectedIndex == 0
                  ? APPColor.primaryColor
                  : APPColor.whiteColor,
            ),
            label: 'Community',
          ),
          // 2. Request Assistance
          BottomNavigationBarItem(
            icon: Icon(
              Icons.handshake,
              size: _selectedIndex == 1 ? 28 : 24,
              color: _selectedIndex == 1
                  ? APPColor.primaryColor
                  : APPColor.whiteColor,
            ),
            label: 'Assistance',
          ),
          // 3. Resource Center
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              size: _selectedIndex == 2 ? 28 : 24,
              color: _selectedIndex == 2
                  ? APPColor.primaryColor
                  : APPColor.whiteColor,
            ),
            label: 'Resources',
          ),
          // 4. Emergency Mode
          BottomNavigationBarItem(
            icon: Icon(
              Icons.crisis_alert,
              size: _selectedIndex == 3 ? 28 : 24,
              color: _selectedIndex == 3
                  ? APPColor.redColor
                  : APPColor.redColor,
            ),
            label: 'Emergency',
          ),
        ],
      ),
    );
  }
}
