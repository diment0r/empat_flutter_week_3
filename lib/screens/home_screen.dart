import 'package:empat_flutter_week_3/data/home_screen_data.dart';
import 'package:empat_flutter_week_3/widgets/add_story_avatar.dart';
import 'package:empat_flutter_week_3/widgets/post.dart';
import 'package:empat_flutter_week_3/widgets/strories_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Story> storiesData = HomeScreenData.stories;
  final List<Post> postsData = HomeScreenData.posts;
  final AccountOwner accountOwner = HomeScreenData.owner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Image.asset('images/logo.png'),
            const Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
          ),
        ],
        backgroundColor: const Color(0xffFAFAFA),
      ),
      // ? ListView
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: StoriesWidget(
                  storiesData: storiesData,
                  ownerAsset: accountOwner.avatarAsset),
            ),
            Column(
              children:
                  postsData.map((post) => PostWidget(post: post)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class StoriesWidget extends StatelessWidget {
  final List<Story> _storiesData;
  final String _ownerAsset;

  const StoriesWidget(
      {super.key, required List<Story> storiesData, required String ownerAsset})
      : _storiesData = storiesData,
        _ownerAsset = ownerAsset;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // ? Padding
          AddStoryAvatar(
            owner: _ownerAsset,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _storiesData
                .map(
                  (story) => StoriesAvatarWidget(
                    image: story.asset,
                    nickname: story.nickname,
                    size: 42,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
