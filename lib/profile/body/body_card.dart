import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/resources/R.dart';
import 'package:flutter_resume/utils.dart';

part 'body_card.g.dart';

@widget
Widget bodyCard(BuildContext context, {
  final String title,
  final Widget child
}) {
  assert(context != null);
  return Card(
    color: Colors.white,
    child: SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildChildren(context, child, title),
      ),
    ),
  );
}

List<Widget> _buildChildren(final BuildContext context, final Widget child, final String title) {
  final children = <Widget>[
    if(title != null) BodyTitle(title)
  ];
  if (child != null) children.add(child);
  return children;
}

@widget
Widget bodyTitle(final BuildContext context, final String title) {
  return Padding(
    padding: EdgeInsets.only(top: R.MARGIN_CARD, left: R.MARGIN_CARD, bottom: 8.0),
    child: Text(title,
      style: subHeadTextStyleFromContext(context).copyWith(
          color: accentColor(context)
      ),
    ),
  );
}