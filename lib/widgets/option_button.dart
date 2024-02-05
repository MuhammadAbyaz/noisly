import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noisly/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionButton extends StatefulWidget {
  final String url;
  final String image;
  const OptionButton({super.key, required this.url, required this.image});

  @override
  State<OptionButton> createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  final audioPlayer = AudioPlayer();

  void playAudio() {
    audioPlayer.setAsset(widget.url);
    if (currentVolume == 0) {
      audioPlayer.setVolume(0.0);
    }
    audioPlayer.play();
    audioPlayer.setLoopMode(LoopMode.all);
    setState(() {
      isPlaying = true;
      buttonColor = activeButton;
    });
  }

  void stopAudio() {
    audioPlayer.stop();
    setState(() {
      isPlaying = false;
      buttonColor = nonActiveButton;
    });
  }

  void changeVolume(volume) {
    audioPlayer.setVolume(volume);
  }

  bool isPlaying = false;
  bool isPaused = false;
  double currentVolume = 0;
  var buttonColor = nonActiveButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: ElevatedButton(
              clipBehavior: Clip.antiAlias,
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  elevation: 3),
              onPressed: () => isPlaying
                  ? stopAudio()
                  : isPaused
                      ? stopAudio()
                      : playAudio(),
              child: SvgPicture.asset(
                widget.image,
                fit: BoxFit.fill,
              )),
        ),
        Slider(
          min: 0,
          max: 1,
          value: currentVolume,
          label: currentVolume.toString(),
          thumbColor: appBarColor,
          activeColor: sliderActiceColor,
          onChanged: (value) {
            setState(() {
              currentVolume = value;
              changeVolume(currentVolume);
            });
          },
        )
      ],
    );
  }
}
