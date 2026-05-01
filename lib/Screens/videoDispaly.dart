import 'package:flutter/material.dart';
import 'package:videoplayer/Screens/recoderDashBord.dart';
import 'video_player_screen.dart';

class VideoDisplay extends StatelessWidget {
  const VideoDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final videos = [
      {
        "title": "Interview_Tech_01.mp4",
        "subtitle": "Today • 10:24 AM • 24.8 MB",
        "image": "assets/image/image2.png",
        "duration": "04:12",
        "path": "assets/video/video3.mp4",
      },
      {
        "title": " صعيدي في الجامعه الامريكيه",
        "subtitle": "Yesterday • 08:00 PM • 30 MB",
        "image": "assets/image/download.jpg",
        "duration": "06:30",
        "path": "assets/video/video8.mp4",
      },
      {
        "title": "اغنية اكتر و اكتر - اعلان هايد بارك رمضان 2026",
        "subtitle": "Yesterday • 08:00 PM • 30 MB",
        "image": "assets/image/orange.png",
        "duration": "06:30",
        "path": "assets/image/orange.png",
      },
      {
        "title": "الليله عيد. الليله عيد حكيم",
        "subtitle": "Yesterday • 08:00 PM • 30 MB",
        "image": "assets/image/eid.png",
        "duration": "06:30",
        "path": "assets/video/video6.mp4",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF050B12),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Videos"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: VideoCard(
              title: video["title"]?.toString() ?? "",
              subtitle: video["subtitle"]?.toString() ?? "",
              imagePath: video["image"]?.toString() ?? "",
              duration: video["duration"]?.toString() ?? "",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerScreen(
                      videoPath: video["path"]!.toString(),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}