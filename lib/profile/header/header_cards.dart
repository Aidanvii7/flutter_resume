import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/header/description_card.dart';
import 'package:flutter_resume/resources/R.dart';

part 'header_cards.g.dart';

@widget
Widget headerCards(final BuildContext context) {
  assert(context != null);
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(R.PADDING_CARD),
          child: DescriptionCard(),
        ),
      ),
    ],
  );
}
