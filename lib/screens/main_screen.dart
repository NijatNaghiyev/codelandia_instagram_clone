import 'package:codelandia_instagram_clone/screens/home_screen.dart';
import 'package:codelandia_instagram_clone/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

Widget activeScreen = const HomeScreen();
int screenIndex = 0;

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    if (screenIndex == 0) {
      activeScreen = const HomeScreen();
    } else if (screenIndex == 4) {
      activeScreen = const ProfileScreen();
    }

    return Scaffold(
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            screenIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: screenIndex,
        iconSize: 26,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_settings), label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 14,
                foregroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/525px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
                ),
              ),
              label: ''),
        ],
      ),
    );
  }
}
