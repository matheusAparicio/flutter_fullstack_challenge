import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';

class HomeBodyAbout extends StatefulWidget {
  const HomeBodyAbout({super.key});

  @override
  State<HomeBodyAbout> createState() => _HomeBodyAboutState();
}

class _HomeBodyAboutState extends State<HomeBodyAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: AppColors().softWhite,
      ),
    );
  }
}