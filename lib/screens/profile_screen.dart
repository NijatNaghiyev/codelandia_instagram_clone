import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/post_profile.dart';
import '../widgets/sliver_bottom_widget.dart';

ValueNotifier<int> kIndexTabBar = ValueNotifier(0);

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    kIndexTabBar.addListener(() {
      setState(() {});
    });
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.square(50),
        child: CustomAppBar(),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        slivers: [
          const SliverAppBar(
            backgroundColor: Color(0xFF1C1C1C),
            elevation: 0,
            surfaceTintColor: Color(0xFF1C1C1C),
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 350,
            // toolbarHeight: 600,
            // collapsedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Padding(
                padding: EdgeInsets.all(8.0),
                child: CardWidget(),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.square(1),
              child: BottomWidget(),
            ),
          ),
          buildSliverList(),
        ],
      ),
    );
  }

  SliverList buildSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate.fixed(
        [
          kIndexTabBar.value == 0
              ? const PostProfile()
              : const Center(
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Icon(
                          Icons.person_pin_sharp,
                          size: 60,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Photos and videos of you',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        Text(
                          textAlign: TextAlign.center,
                          'When people tag you in photos and videos, they`ll appear here.',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
