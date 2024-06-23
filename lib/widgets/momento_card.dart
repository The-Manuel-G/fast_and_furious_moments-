import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MomentoCard extends StatelessWidget {
  final String title;
  final String image;
  final String details;
  final String video;

  MomentoCard(
      {required this.title,
      required this.image,
      required this.details,
      required this.video});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/images/$image'),
        title: Text(title),
        subtitle: Text(details),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MomentoDetailScreen(title: title, video: video)),
          );
        },
      ),
    );
  }
}

class MomentoDetailScreen extends StatefulWidget {
  final String title;
  final String video;

  MomentoDetailScreen({required this.title, required this.video});

  @override
  _MomentoDetailScreenState createState() => _MomentoDetailScreenState();
}

class _MomentoDetailScreenState extends State<MomentoDetailScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/${widget.video}')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
