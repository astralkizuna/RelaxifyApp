import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../SettingsPage.dart';
import '../profile/CustomAppBar.dart';
import 'FocusResult.dart';

class FocusPlayerPage extends StatefulWidget {
  final int hour;
  final int min;

  final int itmin;

  const FocusPlayerPage({
    Key? key,
    required this.hour,
    required this.min,
    required this.itmin,
  }) : super(key: key);

  @override
  State<FocusPlayerPage> createState() => _FocusPlayerPageState();
}

class _FocusPlayerPageState extends State<FocusPlayerPage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  bool startsplay = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool flag = true;

  // Step 2
  Timer? countdownTimer;
  Duration myDuration = Duration(days: 5);
  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }
  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }
  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(days: 5));
  }
  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays);
    // Step 7
    final hours = strDigits(myDuration.inHours.remainder(widget.hour));
    final minutes = strDigits(myDuration.inMinutes.remainder(widget.min));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

    final itmin = strDigits(myDuration.inMinutes.remainder(widget.itmin));
    final itsec = strDigits(myDuration.inSeconds.remainder(60));

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Focus Mode',
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
        onSettingsButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()), // Navigate to the SettingsPage
          );
        },
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0XFFF8F8F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [// Step 8
              Text(
                '$hours:$minutes:$seconds',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 70),
              ),

              SizedBox(height: 30),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF7F9B8F)),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/musicwallpaper/LofiStudy.gif"),
                      fit: BoxFit.fitHeight,
                    )
                ),
              ),

              SizedBox(height: 10),

              Text('Next Interval: 00:$itmin:$itsec',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18),
              ),

              SizedBox(height: 73),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      print("timer value $itmin:$itsec");

                      if(!isPlaying){
                        if(startsplay == false){
                          await audioPlayer.stop();
                          await audioPlayer.seek(Duration.zero);
                          startsplay = true;
                        }
                        startTimer();
                        final player = AudioCache(prefix: 'assets/music/');
                        final url = await player.load('bnoise.mp3');
                        await audioPlayer.play(UrlSource(url.path));
                      }
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xFF7F9B8F),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(12),
                      child: const Text("Start",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  SizedBox(width: 60),

                  GestureDetector(
                    onTap: () async {
                      if(isPlaying){
                        await audioPlayer.pause();
                        stopTimer();
                      }
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xFF7F9B8F),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Text("Stop",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              GestureDetector(
                onTap: () async {
                  await audioPlayer.pause();
                  stopTimer();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FocusResultPage()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF7F9B8F),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text("End Session",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
