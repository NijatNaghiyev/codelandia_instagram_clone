import 'package:codelandia_instagram_clone/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: const Color(0xFF1C1C1C),
        child: TabBar(
          overlayColor: const MaterialStatePropertyAll(
            Color(0xFF1C1C1C),
          ),
          labelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          onTap: (value) {
            kIndexTabBar.value = value;
          },
          tabs: const [
            Tab(
              child: Icon(Icons.width_normal_outlined),
            ),
            Tab(
              child: Icon(Icons.person_pin_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
