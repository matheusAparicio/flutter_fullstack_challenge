import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/ui/custom_widgets/app_bar_button.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {

  double appBarHeight = 70;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: appBarHeight,
      decoration: BoxDecoration(color: AppColors().voidColor),
      child: Row(
        children: [
          AppBarButton(buttonName: "Home", buttonFunction: () {}, buttonWidth: appBarHeight, buttonHeight: appBarHeight),
          AppBarButton(buttonName: "Histórico", buttonFunction: () {}, buttonWidth: appBarHeight, buttonHeight: appBarHeight),
          const Spacer(),
          AppBarButton(buttonName: "Sobre", buttonFunction: () {}, buttonWidth: appBarHeight, buttonHeight: appBarHeight),
        ],
      ),
    );
  }
}
