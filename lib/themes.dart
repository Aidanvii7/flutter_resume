import 'package:flutter/material.dart';

//const Color _PRIMARY_COLOR = Color.fromARGB(255, 63, 81, 181);
const Color _PRIMARY_COLOR = Color.fromARGB(255, 33, 150, 243);
//const Color _PAGE_BACKGROUND = Color.fromARGB(255, 230, 230, 230);
const Color _PAGE_BACKGROUND = Color.fromARGB(255, 230, 230, 230);
//const Color _ACCENT_COLOR = Color.fromARGB(255, 255, 71, 138);
const Color _ACCENT_COLOR = Color.fromARGB(255, 239, 83, 80);
const double _HEADLINE_FONT_SIZE = 50;
const double _TITLE_FONT_SIZE = 30;
const double _SUBTITLE_FONT_SIZE = 25;
const double _SUBHEAD_FONT_SIZE = 40;
const double _BODY1_FONT_SIZE = 20;

final _LIGHT_THEME_DEFAULT = ThemeData.light();

ThemeData get LIGHT_THEME =>
    _LIGHT_THEME_DEFAULT.copyWith(
        primaryIconTheme: _LIGHT_THEME_DEFAULT
            .primaryIconTheme
            .copyWith(
            color: Colors.black
        ),
        textTheme: _LIGHT_THEME_DEFAULT.textTheme.copyWith(
          headline: _LIGHT_THEME_DEFAULT.textTheme.headline.copyWith(
              fontSize: _HEADLINE_FONT_SIZE
          ),
          subhead: _LIGHT_THEME_DEFAULT.textTheme.subhead.copyWith(
              fontSize: _SUBHEAD_FONT_SIZE
          ),
          title: _LIGHT_THEME_DEFAULT.textTheme.title.copyWith(
              fontSize: _TITLE_FONT_SIZE,
              fontWeight: FontWeight.normal
          ),
          subtitle: _DARK_THEME_DEFAULT.textTheme.subtitle.copyWith(
              fontSize: _SUBTITLE_FONT_SIZE
          ),
          body1: _LIGHT_THEME_DEFAULT.textTheme.body1.copyWith(
              fontSize: _BODY1_FONT_SIZE
          ),
        ),
        primaryColor: _PRIMARY_COLOR,
        accentColor: _ACCENT_COLOR,
        cardColor: Colors.white,
        backgroundColor: _PAGE_BACKGROUND,
        scaffoldBackgroundColor: Colors.green[100],
        sliderTheme: _LIGHT_THEME_DEFAULT.sliderTheme.copyWith(
          activeTrackColor: _ACCENT_COLOR,
          thumbColor: _ACCENT_COLOR
        )
    );

final _DARK_THEME_DEFAULT = ThemeData.dark();

ThemeData get DARK_THEME =>
    _DARK_THEME_DEFAULT.copyWith(
        primaryIconTheme: _DARK_THEME_DEFAULT
            .primaryIconTheme
            .copyWith(
            color: Colors.black
        ),
        textTheme: _DARK_THEME_DEFAULT.textTheme.copyWith(
          headline: _DARK_THEME_DEFAULT.textTheme.headline.copyWith(
              fontSize: _HEADLINE_FONT_SIZE,
              fontWeight: FontWeight.normal
          ),
          subhead: _DARK_THEME_DEFAULT.textTheme.subhead.copyWith(
              fontSize: _SUBHEAD_FONT_SIZE
          ),
          title: _DARK_THEME_DEFAULT.textTheme.title.copyWith(
              fontSize: _TITLE_FONT_SIZE
          ),
          subtitle: _DARK_THEME_DEFAULT.textTheme.subtitle.copyWith(
              fontSize: _SUBTITLE_FONT_SIZE
          ),
          body1: _DARK_THEME_DEFAULT.textTheme.body1.copyWith(
              fontSize: _BODY1_FONT_SIZE
          ),
        ),
        primaryColor: _PRIMARY_COLOR,
        accentColor: _ACCENT_COLOR,
        cardColor: Colors.black,
        backgroundColor: _PAGE_BACKGROUND,
        scaffoldBackgroundColor: Colors.green[100]
    );