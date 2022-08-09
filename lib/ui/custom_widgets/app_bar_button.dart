import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarButton extends StatefulWidget {
  final String buttonName;
  final Function() buttonFunction;
  final double buttonWidth;
  final double buttonHeight;
  const AppBarButton(
      {super.key,
      required this.buttonName,
      required this.buttonFunction,
      required this.buttonWidth,
      required this.buttonHeight});

  @override
  State<AppBarButton> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  bool currentlyOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (pointer) {
        setState(() {
          currentlyOnHover = true;
        });
      },
      onExit: (pointer) {
        setState(() {
          currentlyOnHover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.buttonFunction,
        child: Container(
          width: widget.buttonWidth,
          height: widget.buttonHeight,
          decoration: BoxDecoration(
            border: currentlyOnHover
                ? Border(
                    bottom: BorderSide(
                      color: AppColors().blue,
                      width: 3,
                    ),
                  )
                : const Border(),
          ),
          alignment: Alignment.center,
          child: Text(
            widget.buttonName,
            style: GoogleFonts.roboto(color: AppColors().softWhite),
          ),
        ),
      ),
    );
  }
}
