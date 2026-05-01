import 'package:flutter/material.dart';
import 'package:videoplayer/Screens/audio_record_screen.dart.dart';
import 'package:videoplayer/Screens/videoDispaly.dart';
import 'package:videoplayer/Screens/videorecod.dart';

class Recoderdashbord extends StatelessWidget {
  const Recoderdashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050B12),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/image/boy.png'),
                  ),
                  const SizedBox(width: 15),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        'Nora Mohamed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  _iconButton(
                    icon: Icons.video_call,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Videorecod(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(width: 10),

                  _iconButton(
                    icon: Icons.mic,
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const Text(
                'Start Recording',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),

              const SizedBox(height: 25),

              Row(
                children: [
                  Expanded(
                    child: _recordCard(
                      text: "Capture Video",
                      icon: Icons.videocam,
                      color: Colors.blue,
                      isDark: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Videorecod(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 15),
                 Expanded(
  child: _recordCard(
    text: "Record Audio",
    icon: Icons.mic,
    color: const Color(0xFF0F1A24),
    isDark: true,
    onTap: () {
     
    },
  ),
),
                ],
              ),

              const SizedBox(height: 30),

              const StorageWidget(
                used: 4.2,
                total: 10,
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recent Files",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              VideoCard(
                title: "video2.mp4",
                subtitle: "Today • 10:24 AM • 24.8 MB",
                imagePath: "assets/image/image.png",
                duration: "04:12",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VideoDisplay(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _recordCard({
    required String text,
    required IconData icon,
    required Color color,
    required bool isDark,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: isDark ? Colors.white : Colors.black,
                size: 28,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              text,
              style: TextStyle(
                color: isDark ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _iconButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: Colors.white),
      ),
    );
  }
}

class StorageWidget extends StatelessWidget {
  final double used;
  final double total;

  const StorageWidget({
    super.key,
    required this.used,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = used / total;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0F1A24),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.cloud_outlined, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Storage: $used GB / $total GB",
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: percentage,
                  backgroundColor: Colors.white12,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String duration;
  final VoidCallback onTap;

  const VideoCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.duration,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0F1A24),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(18),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      duration,
                      style: const TextStyle(
                          color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        subtitle,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_vert, color: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}