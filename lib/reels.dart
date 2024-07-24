import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  final List<String> videos = [
    'videos/vid16.mp4',
    'videos/vid18.mp4',
    'videos/vid2.mp4',
    'videos/vid19.mp4',
    'videos/vid3.mp4',
    'videos/vid4.mp4',
    'videos/vid5.mp4',
    'videos/vid6.mp4',
  ];
  late VideoPlayerController _controller;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _initializeVideoPlayer(0); // Initialize with the first video
  }

  Future<void> _initializeVideoPlayer(int index) async {
    _controller = VideoPlayerController.asset(videos[index]);
    try {
      await _controller.initialize();
      _controller.setLooping(true);
      setState(() {}); // Trigger a rebuild once initialization is complete
    } catch (e) {
      print('Error initializing video player: $e');
      // Handle error, e.g., show error message to the user
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: videos.length,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _controller.pause(); // Pause current video
              _controller.dispose(); // Dispose current controller
              _initializeVideoPlayer(index); // Initialize new video
            });
          },
          itemBuilder: (context, index) {
            return VideoPlayerWidget(controller: _controller);
          },
        ),
      ),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({super.key, required this.controller});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayerFuture = widget.controller.play();
  }

  @override
  void didUpdateWidget(covariant VideoPlayerWidget oldWidget) {
    if (oldWidget.controller != widget.controller) {
      _initializeVideoPlayerFuture = widget.controller.play();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator(
            backgroundColor: Colors.lightBlue,
            color: Colors.amber,
          ));
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (widget.controller.value.isPlaying) {
                    widget.controller.pause();
                  } else {
                    widget.controller.play();
                  }
                });
              },
              child: VideoPlayer(widget.controller),
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    // Ensure to dispose the controller only if it's not already disposed
    if (!widget.controller.value.isInitialized) {
      widget.controller.dispose();
    }
    super.dispose();
  }
}
