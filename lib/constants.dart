import 'package:flutter/material.dart';

const primaryColor = Color(0xFFFFD460);
const secondaryColor = Color(0xFF04307A);
const lightColor = Color(0xFFF3F3F3);

//Font Sizes
const largeText = 32.0;
const mediumText = 18.0;
const defaultText = 16.0;
const smallText = 14.0;

//Font Size and Weight Combination
const largeTextBold = TextStyle(
  fontSize: mediumText,
  fontWeight: FontWeight.bold,
);

const mediumTextBold = TextStyle(
  fontSize: mediumText,
  fontWeight: FontWeight.bold,
);

const mediumTextW600 = TextStyle(
  fontSize: mediumText,
  fontWeight: FontWeight.w600,
);

const smallTextW600 = TextStyle(
  fontSize: smallText,
  fontWeight: FontWeight.w600,
);

const smallTextW600BlueAccent = TextStyle(
  color: Colors.blueAccent,
  fontSize: smallText,
  fontWeight: FontWeight.w600,
);

//App Bar Styles
const AppBarStyle = AppBarTheme(
  color: Colors.white,
  centerTitle: true,
);

//Rounded Containers with Shadow
BoxDecoration boxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 5,
      offset: Offset(0, 3),
    )
  ],
);
