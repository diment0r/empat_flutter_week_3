import 'package:empat_flutter_week_3/data/home_screen_data.dart';
import 'package:empat_flutter_week_3/widgets/strories_avatar.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final Post _post;

  const PostWidget({super.key, required Post post}) : _post = post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PostHeaderWidget(
          asset: _post.avatarAsset,
          nickname: _post.nickname,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: Image(
            image: AssetImage(_post.postAsset),
          ),
        ),
        _PostFooterWidget(
          likes: _post.likesQuantity,
          nickname: _post.nickname,
          title: _post.title,
          comments: _post.commentsQuantity,
          daysAgo: _post.daysAgo,
        ),
      ],
    );
  }
}

class _PostHeaderWidget extends StatelessWidget {
  final String asset;
  final String nickname;

  const _PostHeaderWidget({required this.asset, required this.nickname});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          AvatarWidget(image: asset, size: 17),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                nickname,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}

class _PostFooterWidget extends StatelessWidget {
  final int likes;
  final String nickname;
  final String title;
  final int comments;
  final int daysAgo;

  const _PostFooterWidget({
    super.key,
    required this.likes,
    required this.nickname,
    required this.title,
    required this.comments,
    required this.daysAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.favorite_border_outlined),
                // child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)) // ? IconButton
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.mode_comment_outlined),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.send_outlined),
              ),
              Spacer(),
              Icon(Icons.save_alt),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Likes: $likes'),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: nickname,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: ' $title'),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text('Show all comments ($comments)'),
              const SizedBox(height: 4),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundImage:
                        AssetImage(HomeScreenData.owner.avatarAsset),
                  ),
                  const SizedBox(width: 7),
                  const Text('Add comment...'),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                daysAgo == 1 ? '$daysAgo day ago' : '$daysAgo days ago',
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
