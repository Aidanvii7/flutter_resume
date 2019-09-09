import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/body/body_card_grid.dart';
import 'package:flutter_resume/profile/header/header_cards.dart';

part 'page_inner.g.dart';

@widget
Widget pageInner(final BuildContext context) {
  return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        HeaderCards(),
        BodyCardGrid(),
      ]
  );
}
