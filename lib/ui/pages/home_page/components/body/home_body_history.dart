import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';

class HomeBodyHistory extends StatefulWidget {
  const HomeBodyHistory({super.key});

  @override
  State<HomeBodyHistory> createState() => _HomeBodyHistoryState();
}

class _HomeBodyHistoryState extends State<HomeBodyHistory> {
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
