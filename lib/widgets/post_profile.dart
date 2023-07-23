import 'package:flutter/material.dart';

double size = 125;

class PostProfile extends StatelessWidget {
  const PostProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 10,
        runSpacing: 10,
        children: List.filled(
          16,
          SizedBox(
            height: size,
            width: size,
            child: Image.network(
              fit: BoxFit.cover,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvPcNvOBx26iY33gQjMlr_yzkfeDHtCwu4oDKtJGoYEeZDwbbXXGqRx8FNx-AvSdSlsSE&usqp=CAU',
            ),
          ),
        ),
      ),
    );
  }
}
