import 'package:flutter/material.dart';

double screenWidth(BuildContext context) {
  final screenWidth = MediaQuery
      .of(context)
      .size
      .width;
  print('screenWidth: $screenWidth');
  return screenWidth;
}

double screenHeight(BuildContext context) {
  return MediaQuery
      .of(context)
      .size
      .height;
}

double percentageOfScreenWidth(BuildContext context, double percentage) {
  return screenWidth(context) * percentage;
}

double percentageOfScreenHeight(BuildContext context, double percentage) {
  return screenHeight(context) * percentage;
}

TextTheme textTheme(BuildContext context) {
  return Theme
    .of(context)
    .textTheme;
}

TextStyle headlineTextStyleFromContext(BuildContext context) {
  return textTheme(context).headline;
}

TextStyle subHeadTextStyleFromContext(BuildContext context) {
  return textTheme(context).subhead;
}

TextStyle titleTextStyleFromContext(BuildContext context) {
  return textTheme(context).title;
}

TextStyle highlightedTitleTextStyleFromContext(BuildContext context) {
  return textTheme(context).title.copyWith(color: accentColor(context));
}

TextStyle highlightedSubtitleTextStyleFromContext(BuildContext context) {
  return textTheme(context).subtitle.copyWith(color: accentColor(context));
}

TextStyle body1TextStyleFromContext(BuildContext context) {
  return textTheme(context).body1;
}

TextStyle body1TextStyleFromTheme(ThemeData themeData) {
  return themeData.textTheme.body1;
}

TextStyle captionThemeFromContext(BuildContext context) {
  return textTheme(context).caption;
}

TextStyle headlineTextStyleFromTheme(ThemeData themeData) {
  return themeData
      .textTheme
      .headline;
}

Color primaryColor(BuildContext context) {
  return Theme.of(context).primaryColor;
}

Color accentColor(BuildContext context) {
  return Theme.of(context).accentColor;
}

Color backgroundColor(BuildContext context) {
  return Theme.of(context).backgroundColor;
}

Color cardColor(BuildContext context) {
  return Theme.of(context).cardColor;
}