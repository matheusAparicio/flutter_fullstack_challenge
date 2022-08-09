import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/ui/pages/home_page/components/home_app_bar.dart';
import 'package:flutter_fullstack_challenge/ui/pages/home_page/components/body/home_body_main.dart';
import 'package:flutter_fullstack_challenge/ui/pages/home_page/components/home_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppBar(),
      ),
      body: HomeBodyMain(),
      bottomNavigationBar: HomeBottomNavigationBar(),
    );
  }
}
