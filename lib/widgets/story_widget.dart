import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    this.imageUrl =
        'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSUPobOTWGGkexkI3nf8u8LFP65DSHycLqi52PJLG0IDhOHSHHPSs1iJUW09LLdUcQiKnoF93mTYz7tDaQ',
    this.name = 'Albert',
    super.key,
  });

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(40)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF8A2387),
                        Color(0xFFE94057),
                        Color(0xFFF27121),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 2,
                left: 2,
                top: 2,
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                    imageUrl ??
                        'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSUPobOTWGGkexkI3nf8u8LFP65DSHycLqi52PJLG0IDhOHSHHPSs1iJUW09LLdUcQiKnoF93mTYz7tDaQ',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
            width: 70,
            child: Text(
              name ?? 'Albert',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
