import 'package:flutter/material.dart';
import 'package:flutter_fullstack_challenge/state/home_state.dart';
import 'package:flutter_fullstack_challenge/utilities/app_colors.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBodyMain extends StatefulWidget {
  const HomeBodyMain({super.key});

  @override
  State<HomeBodyMain> createState() => _HomeBodyMainState();
}

class _HomeBodyMainState extends State<HomeBodyMain> {
  double contentWidthMultiplier = .5;
  double contentHeightMultiplier = .6;
  double contentButtonWidthMultiplier = .08;
  late double contentHeaderHeightMultiplier = contentHeightMultiplier / 8;
  late double contentHeaderWidthMultiplier =
      contentWidthMultiplier - contentButtonWidthMultiplier;

  TextEditingController numberInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: AppColors().softWhite,
      ),
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * contentWidthMultiplier,
        height: MediaQuery.of(context).size.height * contentHeightMultiplier,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * contentWidthMultiplier,
              height: MediaQuery.of(context).size.height *
                  (contentHeaderHeightMultiplier),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width *
                        contentHeaderWidthMultiplier *
                        .95,
                    height: MediaQuery.of(context).size.height *
                        (contentHeaderHeightMultiplier),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: numberInputController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Digite o número a ser verificado."),
                      style: GoogleFonts.roboto(
                        color: AppColors().voidColor,
                      ),
                      cursorColor: AppColors().voidColor,
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        homeState.currentResult = homeState.calculateNumber(
                            number: int.parse(numberInputController.text));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            contentButtonWidthMultiplier,
                        height: MediaQuery.of(context).size.height *
                            contentHeaderHeightMultiplier,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors().softGreen),
                        alignment: Alignment.center,
                        child: Text(
                          "Confirmar",
                          style: GoogleFonts.roboto(
                            color: AppColors().softWhite,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Observer(builder: (_) {
              return Container(
                width:
                    MediaQuery.of(context).size.width * contentWidthMultiplier,
                height: MediaQuery.of(context).size.height *
                    (contentHeightMultiplier - contentHeaderHeightMultiplier),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide()),
                ),
                alignment: Alignment.center,
                child: Text(
                  homeState.currentResult.isNotEmpty
                      ? "O resultado para o número '${numberInputController.text}' é ${homeState.currentResult.length}."
                      : "Insira um número válido.",
                  style: GoogleFonts.roboto(
                    color: AppColors().voidColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
