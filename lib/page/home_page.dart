import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noisly/utils/colors.dart';
import 'package:noisly/widgets/option_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          title: SvgPicture.asset("assets/image/logo.svg"),
          backgroundColor: appBarColor,
          centerTitle: true,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        scrollDirection: Axis.vertical,
        children: const [
          OptionButton(
            url: "assets/audio/camp_fire.mp3",
            image: "assets/image/campfire.svg",
          ),
          SizedBox(
            height: 10,
          ),
          OptionButton(
            url: "assets/audio/rain.mp3",
            image: "assets/image/rain.svg",
          ),
          SizedBox(
            height: 10,
          ),
          OptionButton(
            url: "assets/audio/thunder.mp3",
            image: "assets/image/thunder.svg",
          ),
          SizedBox(
            height: 10,
          ),
          OptionButton(
            url: "assets/audio/river.mp3",
            image: "assets/image/river.svg",
          ),
          SizedBox(
            height: 10,
          ),
          OptionButton(
            url: "assets/audio/waves.mp3",
            image: "assets/image/waves.svg",
          ),
          SizedBox(
            height: 10,
          ),
          OptionButton(
            url: "assets/audio/birds.mp3",
            image: "assets/image/bird.svg",
          ),
          SizedBox(
            height: 10,
          ),
          OptionButton(
            url: "assets/audio/wind.mp3",
            image: "assets/image/wind.svg",
          ),
          SizedBox(
            height: 10,
          ),
          OptionButton(
            url: "assets/audio/leaves.mp3",
            image: "assets/image/leaves.svg",
          )
        ],
      ),
    );
  }
}
