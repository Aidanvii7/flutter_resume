import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/header/header_constants.dart';
import 'package:flutter_resume/resources/R.dart';
import 'package:flutter_resume/themes.dart';
import 'package:flutter_resume/utils.dart';

part 'description_card.g.dart';

 String get _DESCRIPTION => """
Creative and forward thinking android developer with over 5 years of industry experience.
Solid understanding of architectural patterns such as MVP, MVVM and unidirectional patterns like Redux.
Takes pride in building well tested, reusable solutions to common problems with the goal of improving both productivity and reliability.
Experienced in working with large distributed teams in different time zones where asynchronous communication is important.
Enjoys exchanging knowledge with other team members in technical discussions and code reviews.
Recognition at Droidcon NYC 2017 and Droidcon Berlin 2018 for published android development articles on Medium.
Enjoys learning new mobile technologies outside of pure native android development such as Flutter and Dart.
Experienced in working with Agile development workflows such as Scrum and Kanban.
""".replaceAll('\n', '');

@widget
Widget descriptionCard(BuildContext context) {
  return Card(
    color: primaryColor(context),
    child: Container(
        height: percentageOfScreenWidth(context, R.HEADER_HEIGHT_PERCENT),
        child: Container(
          margin: EdgeInsets.all(R.MARGIN_CARD),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Aidan McWilliams",
                style: DARK_THEME.textTheme.headline,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: R.MARGIN_CARD,
                ),
                child: Text(_DESCRIPTION,
                  textAlign: TextAlign.start,
                  style: DARK_THEME.textTheme.body1,
                ),
              )
            ],
          ),
        )
    ),);
}
