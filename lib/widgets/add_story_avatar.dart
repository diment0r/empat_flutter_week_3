import 'package:flutter/material.dart';

class AddStoryAvatar extends StatelessWidget {
  final String _owner;

  const AddStoryAvatar({super.key, required String owner}) : _owner = owner;

  @override
  Widget build(BuildContext context) {
    const double size = 42;

    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: size,
              backgroundColor: const Color(0xffFAFAFA),
              child: CircleAvatar(
                radius: size - ((7.14 * size) / 100),
                backgroundColor: const Color(0xffFAFAFA),
                child: CircleAvatar(
                  radius: size - ((16.66 * size) / 100),
                  backgroundImage: AssetImage(_owner),
                ),
              ),
            ),
            Positioned(
              bottom: 3,
              right: 3,
              child: Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  size: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        const Text('Your story'),
      ],
    );
  }
}
