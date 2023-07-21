import 'package:flutter/material.dart';

class PostWidgets extends StatefulWidget {
  PostWidgets(
      {super.key,
      required this.nameUrl,
      required this.name,
      required this.postImageUrl,
      required this.isLiked});

  final String nameUrl;
  final String name;
  final String postImageUrl;
  bool isLiked;

  @override
  State<PostWidgets> createState() => _PostWidgetsState();
}

class _PostWidgetsState extends State<PostWidgets> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  foregroundImage: NetworkImage(widget.nameUrl),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  widget.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(
              widget.postImageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.isLiked = !widget.isLiked;
                  });
                },
                icon: Icon(
                  widget.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: widget.isLiked ? Colors.red : null,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat_bubble_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  foregroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg/330px-Einstein_1921_by_F_Schmutzer_-_restoration.jpg',
                  ),
                ),
                SizedBox(width: 1),
                CircleAvatar(
                  radius: 10,
                  foregroundImage: NetworkImage(
                    'https://malevus.com/wp-content/uploads/2022/09/einstein.jpeg',
                  ),
                ),
                SizedBox(width: 1),
                CircleAvatar(
                  radius: 10,
                  foregroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRURN6ePYWSZ4cChk4vXkFOVNFaaXnG89yWTrkLL6yxs9OF8ZhcXZ3llue_vYeKh6nwztw&usqp=CAU',
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Liked by',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                Text(
                  ' albert_e',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  ' and',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ' others',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 387,
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: widget.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        children: const [
                          TextSpan(
                            text:
                                '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed consectetur diam. Cras tortor nisl, tincidunt sit amet tortor vel, tempor iaculis massa. Nam mollis dignissim volutpat. Suspendisse sit amet mi accumsan, mollis arcu sed, finibus quam. Curabitur fringilla cursus metus. Quisqu',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\n\n#instagram #albert #eynisey #2023 #atom #starrynight #vangogh',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
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
