import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    // ! Container
    return Container(
      color: const Color.fromARGB(135, 223, 223, 223),
      padding: const EdgeInsets.all(50),
      // ! Column
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // ! MainAxis
        crossAxisAlignment: CrossAxisAlignment.center, // ! CrossAxis
        children: [
          Container(
            height: 300, // ! Size
            decoration: BoxDecoration(
              color: Colors.red, // ! Color
              boxShadow: [
                // ! Shadow
                BoxShadow(
                  color: Colors.black.withOpacity(0.35),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          // ! Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ! Expanded
              const Expanded(
                child: Text('DIMENTOR', style: TextStyle(fontSize: 20)),
              ),
              Container(
                width: 130,
                height: 130,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/dimentor.jpg'), // ! Background
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
