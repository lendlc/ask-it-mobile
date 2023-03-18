import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

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
  fontSize: largeText,
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
  elevation: 0.9,
);

OutlineInputBorder inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
    color: lightColor,
  ),
);

OutlineInputBorder errorInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
    color: Colors.red,
    width: 1.5,
  ),
);

//Input Decoration
InputDecoration inputDecorationStyle = InputDecoration(
  filled: true,
  fillColor: lightColor,
  isDense: true,
  focusedBorder: inputBorder,
  enabledBorder: inputBorder,
  errorBorder: errorInputBorder,
  focusedErrorBorder: errorInputBorder,
);

//Rounded Containers with Shadow
BoxDecoration boxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.4),
      spreadRadius: 0.5,
      blurRadius: 10,
      offset: Offset(0, 3),
    )
  ],
);

SkeletonParagraph oneLineTextSkeleton = SkeletonParagraph(
  style: SkeletonParagraphStyle(
    lines: 1,
  ),
);

final subjects = [
  {
    'title': 'Intro to Java Programming',
    'imagePath': 'assets/images/subjects/sub-1.png',
  },
  {
    'title': 'Advanced Java Programming',
    'imagePath': 'assets/images/subjects/sub-2.png',
  },
  {
    'title': 'Object Oriented Programming',
    'imagePath': 'assets/images/subjects/sub-3.png',
  },
  {
    'title': 'Data Structures and Algorithms',
    'imagePath': 'assets/images/subjects/sub-4.png',
  },
];

class UserType {
  static const String tutee = 'tutee';
  static const String tutor = 'tutor';
}

class JDoodleSettings {
  static const String clientId = 'db13acc080053eba9a3352bc41cfbcbc';
  static const String clientSecret =
      '6afda707a21285ce0bc173a266b2200327e56ca6d17abba24ed5ff96f3f82508';
  static const String stdin = 'askit';
  static const String language = 'java';
  static const String versionIndex = '0';
}
