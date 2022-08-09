import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';

class HomeBodyMain extends StatefulWidget {
  const HomeBodyMain({super.key});

  @override
  State<HomeBodyMain> createState() => _HomeBodyMainState();
}

class _HomeBodyMainState extends State<HomeBodyMain> {
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
