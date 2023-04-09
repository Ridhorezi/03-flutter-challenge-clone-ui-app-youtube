import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/data.dart';
import 'package:youtube_ui_clone/widgets/custome_sliver_app_bar.dart';
import 'package:youtube_ui_clone/widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomeSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 60.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,  
              ),
            ),
          )
        ],
      ),
    );
  }
}
