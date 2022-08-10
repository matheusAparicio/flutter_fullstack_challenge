import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarButton extends StatefulWidget {
  final String buttonName;
  final Function() buttonFunction;
  final double buttonWidth;
  final double buttonHeight;
  final bool clickable;
  const AppBarButton({
    super.key,
    required this.buttonName,
    required this.buttonFunction,
    required this.buttonWidth,
    required this.buttonHeight,
    this.clickable = true,
  });

  @override
  State<AppBarButton> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  bool currentlyOnHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: widget.clickable
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      onEnter: (pointer) {
        if (widget.clickable) {
          setState(() {
            currentlyOnHover = true;
          });
        }
      },
      onExit: (pointer) {
        if (widget.clickable) {
          setState(() {
            currentlyOnHover = false;
          });
        }
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
            style: GoogleFonts.roboto(
              color:
                  widget.clickable ? AppColors().softWhite : AppColors().grey,
            ),
          ),
        ),
      ),
    );
  }
}
