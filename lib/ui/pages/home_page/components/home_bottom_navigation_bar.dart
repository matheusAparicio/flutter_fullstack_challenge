import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors().softGrey,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Matheus Aparicio da Silva, 2022."),
          Text("https://github.com/matheusAparicio")
        ],
      ),
    );
  }
}
