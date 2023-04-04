import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final cardTitleStyle = GoogleFonts.bebasNeue(
  textStyle: const TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  ),
);

final detailCardTitleStyle = GoogleFonts.bebasNeue(
  textStyle: const TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  ),
);

final detailCardSubtitleStyle = GoogleFonts.bebasNeue(
  textStyle: TextStyle(
    fontSize: 18,
    color: Colors.grey.shade700,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  ),
);

final detailCardDescriptionStyle = GoogleFonts.workSans(
  textStyle: const TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  ),
);

final detailCardPriceStyle = GoogleFonts.bebasNeue(
  textStyle: TextStyle(
    fontSize: 25,
    color: Colors.grey.shade700,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  ),
);

final buttonStyle = GoogleFonts.bebasNeue(
  textStyle: const TextStyle(
    fontSize: 25,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
    shadows: [
      Shadow(
        offset: Offset(1, 4),
        blurRadius: 3,
        color: Color.fromRGBO(0, 0, 0, 0.2),
      ),
    ],
  ),
);

final balanceStyle = GoogleFonts.bebasNeue(
  textStyle: const TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  ),
);

final smallTextStyle = GoogleFonts.workSans(
  textStyle: const TextStyle(
    fontSize: 10,
    color: Colors.black,
    fontWeight: FontWeight.w200,
  ),
);
