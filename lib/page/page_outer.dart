import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/page/page_inner.dart';
import 'package:flutter_resume/utils.dart';

part 'page_outer.g.dart';

const double _PAGE_LEFT_RIGHT_MARGIN_PERCENT = 0.05;
const double _PAGE_TOP_MARGIN_PERCENT = 0.04;
const double _PAGE_BOTTOM_MARGIN_PERCENT = 0.04;
const double _A4_ASPECT_RATIO = 1.0 / 1.414;

@widget
Widget pageOuter(final BuildContext context) => _PageChrome();

@widget
Widget _pageChrome(final BuildContext context) {
  final marginLeftRight =
      percentageOfScreenWidth(context, _PAGE_LEFT_RIGHT_MARGIN_PERCENT);
  return Stack(
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        color: backgroundColor(context),
        padding: EdgeInsets.only(
            left: marginLeftRight,
            top: percentageOfScreenHeight(context, _PAGE_TOP_MARGIN_PERCENT),
            right: marginLeftRight,
            bottom:
                percentageOfScreenHeight(context, _PAGE_BOTTOM_MARGIN_PERCENT)),
        child: _PageContent(),
      ),
      BuiltWithFlutter(),
    ],
  );
}

@widget
Widget _pageContent(final BuildContext context) {
  return AspectRatio(aspectRatio: _A4_ASPECT_RATIO, child: PageInner());
}

@widget
Widget builtWithFlutter(final BuildContext context) {
  assert(context != null);
  return Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Built with Flutter',
            style: titleTextStyleFromContext(context)
                .copyWith(color: Colors.grey[700]),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: SvgPicture.asset('assets/rawsvgs/flutter.svg'),
          ),
        ],
      ),
    ),
  );
}
