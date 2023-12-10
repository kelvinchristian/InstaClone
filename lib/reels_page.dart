import 'package:cloney/text_size.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  List<String> reelUrls = [
    "https://download-video.akamaized.net/v3-1/playback/7034e44e-83ae-4c30-8fb6-97437f12d222/3f936192?__token__=st=1702203373~exp=1702217773~acl=%2Fv3-1%2Fplayback%2F7034e44e-83ae-4c30-8fb6-97437f12d222%2F3f936192%2A~hmac=364d72a90ea3a5c1a7fc9f147f79901d2f97bcff6d65c2d6ce0f05ac6eaa2d96&r=dXMtZWFzdDE%3D",
    "https://download-video.akamaized.net/v3-1/playback/7034e44e-83ae-4c30-8fb6-97437f12d222/3f936192?__token__=st=1702203373~exp=1702217773~acl=%2Fv3-1%2Fplayback%2F7034e44e-83ae-4c30-8fb6-97437f12d222%2F3f936192%2A~hmac=364d72a90ea3a5c1a7fc9f147f79901d2f97bcff6d65c2d6ce0f05ac6eaa2d96&r=dXMtZWFzdDE%3D",
    "https://download-video.akamaized.net/v3-1/playback/7034e44e-83ae-4c30-8fb6-97437f12d222/3f936192?__token__=st=1702203373~exp=1702217773~acl=%2Fv3-1%2Fplayback%2F7034e44e-83ae-4c30-8fb6-97437f12d222%2F3f936192%2A~hmac=364d72a90ea3a5c1a7fc9f147f79901d2f97bcff6d65c2d6ce0f05ac6eaa2d96&r=dXMtZWFzdDE%3D",
    "https://download-video.akamaized.net/v3-1/playback/7034e44e-83ae-4c30-8fb6-97437f12d222/3f936192?__token__=st=1702203373~exp=1702217773~acl=%2Fv3-1%2Fplayback%2F7034e44e-83ae-4c30-8fb6-97437f12d222%2F3f936192%2A~hmac=364d72a90ea3a5c1a7fc9f147f79901d2f97bcff6d65c2d6ce0f05ac6eaa2d96&r=dXMtZWFzdDE%3D"
        "https://download-video.akamaized.net/v3-1/playback/7034e44e-83ae-4c30-8fb6-97437f12d222/3f936192?__token__=st=1702203373~exp=1702217773~acl=%2Fv3-1%2Fplayback%2F7034e44e-83ae-4c30-8fb6-97437f12d222%2F3f936192%2A~hmac=364d72a90ea3a5c1a7fc9f147f79901d2f97bcff6d65c2d6ce0f05ac6eaa2d96&r=dXMtZWFzdDE%3D",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SnapList(reelUrls),
    ));
  }
}

class SnapList extends StatefulWidget {
  List<String> reelUrls;

  SnapList(this.reelUrls);

  @override
  _SnapListState createState() => _SnapListState();
}

class _SnapListState extends State<SnapList> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      pageSnapping: true,
      itemBuilder: (context, index) {
        return ReelViewItem();
      },
      scrollDirection: Axis.vertical,
    );
    ;
  }
}

class ReelViewItem extends StatefulWidget {
  const ReelViewItem({Key? key}) : super(key: key);

  @override
  _ReelViewItemState createState() => _ReelViewItemState();
}

class _ReelViewItemState extends State<ReelViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          _BumbleBeeRemoteVideo(
              "https://download-video.akamaized.net/v3-1/playback/7034e44e-83ae-4c30-8fb6-97437f12d222/3f936192?__token__=st=1702203373~exp=1702217773~acl=%2Fv3-1%2Fplayback%2F7034e44e-83ae-4c30-8fb6-97437f12d222%2F3f936192%2A~hmac=364d72a90ea3a5c1a7fc9f147f79901d2f97bcff6d65c2d6ce0f05ac6eaa2d96&r=dXMtZWFzdDE%3D"),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style: TextStyle(
                      fontSize: TextSizes.large,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "This is the caption",
                  style: TextStyle(
                      fontSize: TextSizes.medium,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              right: 15,
              child:  Container(
                  child: Column(
                    children: [
                      Icon(Icons.favorite, color: Colors.white),
                      SizedBox(height: 5),
                      Text("100"),
                      SizedBox(height: 10),
                      Icon(Icons.comment, color: Colors.white),
                      SizedBox(height: 5),
                      Text("100"),
                      SizedBox(height: 10),
                      Icon(Icons.send, color: Colors.white),
                      SizedBox(height: 5),

                      Text("100"),
                    ],
                  ),
                ),
              )
        ],
      ),
    );
  }
}

class _BumbleBeeRemoteVideo extends StatefulWidget {
  String reelUrl;

  _BumbleBeeRemoteVideo(this.reelUrl);

  @override
  _BumbleBeeRemoteVideoState createState() => _BumbleBeeRemoteVideoState();
}

class _BumbleBeeRemoteVideoState extends State<_BumbleBeeRemoteVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.reelUrl),
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
