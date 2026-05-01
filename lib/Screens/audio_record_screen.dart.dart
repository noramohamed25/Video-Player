// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:record/record.dart';
// import 'package:path_provider/path_provider.dart';

// class AudioRecordScreen extends StatefulWidget {
//   const AudioRecordScreen({super.key});

//   @override
//   State<AudioRecordScreen> createState() => _AudioRecordScreenState();
// }

// class _AudioRecordScreenState extends State<AudioRecordScreen> {
//   final AudioRecorder _recorder = AudioRecorder();

//   bool isRecording = false;
//   int seconds = 0;
//   Timer? timer;

//   String? filePath;

//   // 🔴 START RECORDING
//   Future<void> startRecording() async {
//     final hasPermission = await _recorder.hasPermission();
//     if (!hasPermission) return;

//     seconds = 0;

//     final dir = await getApplicationDocumentsDirectory();
//     filePath =
//         '${dir.path}/audio_${DateTime.now().millisecondsSinceEpoch}.m4a';

//     await _recorder.start(
//       const RecordConfig(
//         encoder: AudioEncoder.aacLc,
//         bitRate: 128000,
//         sampleRate: 44100,
//       ),
//       path: filePath!,
//     );

//     setState(() {
//       isRecording = true;
//     });

//     timer = Timer.periodic(const Duration(seconds: 1), (_) {
//       setState(() => seconds++);
//     });
//   }

//   // ⏹️ STOP RECORDING
//   Future<void> stopRecording() async {
//     await _recorder.stop();
//     timer?.cancel();
//     timer = null;

//     setState(() {
//       isRecording = false;
//     });

//     print("Saved at: $filePath");
//   }

//   // ⏱️ FORMAT TIME
//   String formatTime(int sec) {
//     final m = (sec ~/ 60).toString().padLeft(2, '0');
//     final s = (sec % 60).toString().padLeft(2, '0');
//     return "$m:$s";
//   }

//   @override
//   void dispose() {
//     timer?.cancel();
//     _recorder.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,

//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text("Audio Recorder"),
//         centerTitle: true,
//       ),

//       body: Column(
//         children: [
//           const SizedBox(height: 40),

//           // 🔴 REC indicator
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               if (isRecording)
//                 const Icon(Icons.circle, color: Colors.red, size: 12),
//               const SizedBox(width: 8),
//               Text(
//                 isRecording ? "REC" : "READY",
//                 style: const TextStyle(color: Colors.white),
//               ),
//             ],
//           ),

//           const SizedBox(height: 30),

//           // ⏱️ TIMER
//           Text(
//             formatTime(seconds),
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 45,
//               fontWeight: FontWeight.bold,
//             ),
//           ),

//           const SizedBox(height: 40),

//           // 🎚️ waveform placeholder
//           const Expanded(
//             child: Center(
//               child: Icon(
//                 Icons.graphic_eq,
//                 size: 120,
//                 color: Colors.blue,
//               ),
//             ),
//           ),

//           // 🎛️ CONTROLS
//           Padding(
//             padding: const EdgeInsets.only(bottom: 40),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.pause, color: Colors.white),
//                 ),

//                 // 🔴 RECORD BUTTON
//                 GestureDetector(
//                   onTap: () {
//                     isRecording ? stopRecording() : startRecording();
//                   },
//                   child: Container(
//                     width: 80,
//                     height: 80,
//                     decoration: const BoxDecoration(
//                       color: Colors.red,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       isRecording
//                           ? Icons.stop
//                           : Icons.fiber_manual_record,
//                       color: Colors.white,
//                       size: 35,
//                     ),
//                   ),
//                 ),

//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.bookmark, color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }