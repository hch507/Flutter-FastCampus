import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          storyArea(),
          feedArea(),
        ],
      ),
    );
  }
}

class storyArea extends StatelessWidget {
  const storyArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (newIndex) => StoryWidget(index: newIndex)),
      ),
    );
  }
}

class feedArea extends StatelessWidget {
  const feedArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class StoryWidget extends StatelessWidget {
  final int index;

  const StoryWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(40)),
          ),
          Text("user $index")
        ],
      ),
    );
  }
}
