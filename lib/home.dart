import 'package:cloney/chat_list_page.dart';
import 'package:cloney/custom_colors.dart';
import 'package:cloney/post_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('InstaClone')),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, size: 30, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.send, size: 30, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  ChatListPage()));
            },
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            stories_view(),
            SizedBox(
              height: 10,
            ),
            post_view(),
          ],
        ),
      ),
    );
  }

  stories_view() {
    return Container(
        height: 100,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          story(isAddStory: true, isWatched: true, isCloseFriends: true),
          story(isAddStory: false, isWatched: false, isCloseFriends: true),
          story(isAddStory: false, isWatched: true, isCloseFriends: true),
          story(isAddStory: false, isWatched: true, isCloseFriends: false),
          story(isAddStory: false, isWatched: false, isCloseFriends: false)
        ]));
  }
}

post_view() {
  List<PostItem> posts = [
    PostItem(
        name: 'Your Name',
        profileImage:
            'https://images.unsplash.com/photo-1578307362674-b209690512c0?q=80&w=360&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        postImage:
            'https://images.unsplash.com/photo-1578307362674-b209690512c0?q=80&w=360&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        caption: 'This is a caption',
        timeAgo: '1 hour ago',
        likes: 100,
        comments: 10,
        shares: 5),
    PostItem(
        name: 'Your Name',
        profileImage:
            'https://images.unsplash.com/photo-1578307362674-b209690512c0?q=80&w=360&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        postImage:
            'https://images.unsplash.com/photo-1578307362674-b209690512c0?q=80&w=360&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        caption: 'This is a caption',
        timeAgo: '1 hour ago',
        likes: 100,
        comments: 10,
        shares: 5),
  ];

  return Expanded(
    child: ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return PostView(
          posts[index],
        );
      },
    ),
  );
}

class PostView extends StatefulWidget {
  PostItem post;

  PostView(this.post, {Key? key}) : super(key: key);

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  String? name;
  String? profileImage;
  String? postImage;
  String? caption;
  String? timeAgo;
  int? likes;
  int? comments;
  int? shares;
  bool? isLiked = false;
  bool? isSaved = false;

  @override
  void initState() {
    super.initState();
    name = widget.post.name;
    profileImage = widget.post.profileImage;
    postImage = widget.post.postImage;
    caption = widget.post.caption;
    timeAgo = widget.post.timeAgo;
    likes = widget.post.likes;
    comments = widget.post.comments;
    shares = widget.post.shares;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(profileImage!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      name!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          color: CustomColors.black,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.report,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Report',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.link,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Copy Link',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Share to...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.cancel,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FadeInImage(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            placeholder: const AssetImage('images/placeholder.png'),
            image: NetworkImage(postImage!),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isLiked = !isLiked!;
                              if (isLiked!) {
                                likes = likes! + 1;
                              } else {
                                likes = likes! - 1;
                              }
                            });
                          },
                          child: Icon(
                            isLiked! ? Icons.favorite : Icons.favorite_border,
                            color:
                                isLiked! ? CustomColors.orange : Colors.white,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSaved = !isSaved!;
                        });
                      },
                      child: Icon(
                        isSaved! ? Icons.bookmark : Icons.bookmark_border,
                        color: isSaved! ? CustomColors.orange : Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$likes likes',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$name ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: caption,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    showComments(context);
                  },
                  child: Text(
                    'View all $comments comments',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  timeAgo!,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showComments(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: CustomColors.black,
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Center(
                    child: Text(
                      'Comments',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: CustomColors.greyDarker,
                height: 0.1,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: comments,
                  itemBuilder: (BuildContext context, int index) {
                    return CommentItem();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CommentItem extends StatelessWidget {
  const CommentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1578307362674-b209690512c0?q=80&w=360&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'This is a comment',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class story extends StatelessWidget {
  bool isAddStory;

  bool isWatched;

  bool isCloseFriends;

  story(
      {Key? key,
      required this.isAddStory,
      required this.isWatched,
      required this.isCloseFriends})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isAddStory) {
      return Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.all(8),
            decoration: isWatched
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 2),
                  )
                : BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [Colors.red, Colors.orange, Colors.yellow],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1578307362674-b209690512c0?q=80&w=360&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.orange,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Your Story',
            style: TextStyle(fontSize: 12),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.all(8),
            decoration: isWatched
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 2),
                  )
                : isCloseFriends
                    ? BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 2),
                      )
                    : BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                      ),
            child: Container(
              margin: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1578307362674-b209690512c0?q=80&w=360&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Text(
            'Your Name',
            style: TextStyle(fontSize: 12,),
          ),
        ],
      );
    }
  }
}
