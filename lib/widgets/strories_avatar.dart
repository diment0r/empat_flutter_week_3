import 'package:flutter/material.dart';

class StoriesAvatarWidget extends StatelessWidget {
  final String _image;
  final String _nickname;
  final double _size;

  const StoriesAvatarWidget(
      {super.key,
      required String image,
      required String nickname,
      required double size})
      : _image = image,
        _nickname = nickname,
        _size = size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Column(
          children: [
            AvatarWidget(
              image: _image,
              size: _size,
            ),
            const SizedBox(height: 3),
            Text(_nickname),
          ],
        ),
      ],
    );
  }
}

class AvatarWidget extends StatelessWidget {
  String image;
  double size;

  AvatarWidget({super.key, required this.image, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: const AssetImage('images/gradient.jpg'),
      child: CircleAvatar(
        radius: size - ((7.14 * size) / 100),
        backgroundColor: const Color(0xffFAFAFA),
        child: CircleAvatar(
          radius: size - ((16.66 * size) / 100),
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
