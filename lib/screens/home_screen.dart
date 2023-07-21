import 'package:codelandia_instagram_clone/widgets/post_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Instagram',
          style: GoogleFonts.lobster(fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  StoryWidget(
                    name: 'Your story',
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/525px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
                  ),
                  StoryWidget(),
                  StoryWidget(
                      name: 'Eynisey',
                      imageUrl:
                          'https://malevus.com/wp-content/uploads/2022/09/einstein.jpeg'),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                ],
              ),
            ),
            PostWidgets(
                isLiked: true,
                postImageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg/330px-Einstein_1921_by_F_Schmutzer_-_restoration.jpg',
                nameUrl:
                    'https://malevus.com/wp-content/uploads/2022/09/einstein.jpeg',
                name: 'albert_2023'),
            PostWidgets(
                isLiked: false,
                postImageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/525px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
                nameUrl: 'https://pbs.twimg.com/media/FwZ93arakAEUfOm.jpg',
                name: 'nicatnaghiyev'),
            PostWidgets(
                isLiked: false,
                postImageUrl:
                    'https://images.newscientist.com/wp-content/uploads/2019/06/18142824/einstein.jpg?width=1200',
                nameUrl:
                    'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSUPobOTWGGkexkI3nf8u8LFP65DSHycLqi52PJLG0IDhOHSHHPSs1iJUW09LLdUcQiKnoF93mTYz7tDaQ',
                name: 'albert_eynisey'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
