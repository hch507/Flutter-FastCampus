import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/data/feed_list.dart';

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

final feedDataList = [
  FeedData(userName: "user1", likeCount: "100", content: "hello"),
  FeedData(userName: "user2", likeCount: "16", content: "hello"),
  FeedData(userName: "user3", likeCount: "10", content: "hello"),
  FeedData(userName: "user4", likeCount: "50", content: "hello"),
  FeedData(userName: "user5", likeCount: "60", content: "hello"),
  FeedData(userName: "user6", likeCount: "140", content: "hello"),
  FeedData(userName: "user7", likeCount: "130", content: "hello"),
  FeedData(userName: "user8", likeCount: "120", content: "hello"),
];

class feedArea extends StatelessWidget {
  const feedArea({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
      itemBuilder: (content, index) => FeedItem(
        feedData: feedDataList[index],
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  final int index;

  const StoryWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
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

class FeedItem extends StatelessWidget {
  final FeedData feedData;

  const FeedItem({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade300),
                  ),
                  SizedBox(width: 8),
                  Text(feedData.userName),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 280,
          color: Colors.indigo.shade300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.paperplane))
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark))
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "좋아요 ${feedData.likeCount}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: feedData.userName,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: feedData.content)
              ],
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
