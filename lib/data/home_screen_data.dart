class Story {
  final String _asset;
  final String _nickname;

  const Story({
    required String asset,
    required String nickname,
  })  : _asset = asset,
        _nickname = nickname;

  String get asset => _asset;
  String get nickname => _nickname;
}

class Post {
  final String _avatarAsset;
  final String _nickname;
  final String _postAsset;
  final int _likesQuantity;
  final String _title;
  final int _commentsQuantity;
  final int _daysAgo;

  const Post({
    required String avatarAsset,
    required String nickname,
    required String postAsset,
    required int likesQuantity,
    required String title,
    required int commentsQuantity,
    required int daysAgo,
  })  : _avatarAsset = avatarAsset,
        _nickname = nickname,
        _postAsset = postAsset,
        _likesQuantity = likesQuantity,
        _title = title,
        _commentsQuantity = commentsQuantity,
        _daysAgo = daysAgo;

  String get avatarAsset => _avatarAsset;
  String get nickname => _nickname;
  String get postAsset => _postAsset;
  String get title => _title;
  int get likesQuantity => _likesQuantity;
  int get commentsQuantity => _commentsQuantity;
  int get daysAgo => _daysAgo;
}

class AccountOwner {
  final String _avatarAsset;
  final String _nickname;

  const AccountOwner.singleton(
      {required String avatarAsset, required String nickname})
      : _avatarAsset = avatarAsset,
        _nickname = nickname;

  static const AccountOwner owner = AccountOwner.singleton(
      avatarAsset: 'images/dimentor.jpg', nickname: 'dimentor');

  factory AccountOwner() {
    return owner;
  }

  String get avatarAsset => _avatarAsset;
  String get nickname => _nickname;
}

class HomeScreenData {
  // stroies
  static const List<Story> stories = [
    Story(asset: 'images/story_1.jpg', nickname: 'ayzek'),
    Story(asset: 'images/story_2.jpg', nickname: 'goloco'),
    Story(asset: 'images/story_3.jpg', nickname: 'ronaldingo'),
    Story(asset: 'images/story_4.jpg', nickname: 'karim'),
    Story(asset: 'images/story_5.jpg', nickname: 'freezer'),
    Story(asset: 'images/story_6.jpg', nickname: 'burim'),
  ];

  // account owner
  static AccountOwner owner = AccountOwner();

  // posts
  static const List<Post> posts = [
    Post(
      avatarAsset: 'images/story_1.jpg',
      nickname: 'ayzek',
      postAsset: 'images/post_1.jpg',
      likesQuantity: 199,
      title: 'Hello my name is ayzek. This is my best image',
      commentsQuantity: 34,
      daysAgo: 8,
    ),
    Post(
      avatarAsset: 'images/story_2.jpg',
      nickname: 'goloco',
      postAsset: 'images/post_2.jpg',
      likesQuantity: 431,
      title: 'Some text for goloco',
      commentsQuantity: 119,
      daysAgo: 4,
    ),
    Post(
      avatarAsset: 'images/story_3.jpg',
      nickname: 'ronaldingo',
      postAsset: 'images/post_3.jpg',
      likesQuantity: 4092,
      title: 'Gogo gadget. Football player... ',
      commentsQuantity: 763,
      daysAgo: 1,
    ),
    Post(
      avatarAsset: 'images/story_4.jpg',
      nickname: 'karim',
      postAsset: 'images/post_4.jpg',
      likesQuantity: 4092,
      title: 'Gogo gadget. Football player... ',
      commentsQuantity: 763,
      daysAgo: 1,
    ),
    Post(
      avatarAsset: 'images/story_5.jpg',
      nickname: 'freezer',
      postAsset: 'images/post_5.jpg',
      likesQuantity: 4092,
      title: 'Gogo gadget. Football player... ',
      commentsQuantity: 763,
      daysAgo: 1,
    ),
    Post(
      avatarAsset: 'images/story_6.jpg',
      nickname: 'burim',
      postAsset: 'images/post_6.jpg',
      likesQuantity: 4092,
      title: 'Gogo gadget. Football player... ',
      commentsQuantity: 763,
      daysAgo: 1,
    ),
  ];
}
