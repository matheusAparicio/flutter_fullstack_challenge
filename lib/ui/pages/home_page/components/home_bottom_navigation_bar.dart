import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  _launchURL(url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
          Text(
            "Matheus Aparicio da Silva, 2022.",
            style: GoogleFonts.roboto(color: AppColors().voidColor),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () async {
                await _launchURL("https://github.com/matheusAparicio");
              },
              child: Text(
                "https://github.com/matheusAparicio",
                style: GoogleFonts.roboto(color: AppColors().blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
