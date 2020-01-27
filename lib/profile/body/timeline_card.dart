import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/body/body_card.dart';
import 'package:flutter_resume/resources/R.dart';
import 'package:flutter_resume/utils.dart';

part 'timeline_card.g.dart';

const int FLEX_PLACE = 15;
const int FLEX_TITLE = 20;
const int FLEX_DATE = 16;

@widget
Widget timelineEntry(
  final BuildContext context, {
  @required final String place,
  @required final String fromTo,
  @required final String title,
  final String highlight,
  @required final List<String> bulletPoints,
}) {
  assert(context != null && place != null && fromTo != null && title != null && bulletPoints != null);
  return Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _HeaderRow(
          place: place,
          fromTo: fromTo,
          title: title,
        ),
        _BulletPoints(bulletPoints),
        _SeparatorLine()
      ],
    ),
  );
}

@widget
Widget _headerRow(
  final BuildContext context, {
  @required final String place,
  @required final String fromTo,
  @required final String title,
  final String highlight,
}) {
  assert(context != null && place != null && fromTo != null && title != null);
  return Padding(
    padding: EdgeInsets.only(top: R.MARGIN_SPACE, bottom: R.MARGIN_SPACE),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _Indicator(),
        _Place(place),
        _TitleColumn(
          title,
          highlight: highlight,
        ),
        _FromToDate(fromTo)
      ],
    ),
  );
}

@widget
Widget _indicator(final BuildContext context) {
  assert(context != null);
  return Padding(
      padding: EdgeInsets.only(left: 4, top: 8, right: 18),
      child: SizedBox(
          width: R.FAB_TIMELINE_SIZE,
          height: R.FAB_TIMELINE_SIZE,
          child: FloatingActionButton(
            backgroundColor: accentColor(context),
          )));
}

@widget
Widget _place(final BuildContext context, final String place) {
  assert(context != null && place != null);
  return Expanded(
    flex: FLEX_PLACE,
    child: Text(place, style: titleTextStyleFromContext(context)),
  );
}

@widget
Widget _titleColumn(final BuildContext context, final String title, {final String highlight}) {
  assert(context != null && title != null);
  if (highlight != null) {
    return Expanded(
      flex: FLEX_TITLE,
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _Title(title),
            _Highlight(highlight),
          ],
        ),
      ),
    );
  } else {
    return Expanded(
      flex: FLEX_TITLE,
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: _Title(title),
      ),
    );
  }
}

@widget
Widget _title(final BuildContext context, final String title) {
  assert(context != null && title != null);
  return Text(
    title,
    style: titleTextStyleFromContext(context),
  );
}

@widget
Widget _highlight(final BuildContext context, final String highlight) {
  assert(context != null && highlight != null);
  return Text(
    highlight,
    style: highlightedSubtitleTextStyleFromContext(context),
  );
}

@widget
Widget _fromToDate(final BuildContext context, final String fromTo) {
  assert(context != null && fromTo != null);
  return Expanded(
    flex: FLEX_DATE,
    child: Text(fromTo, textAlign: TextAlign.right, style: highlightedSubtitleTextStyleFromContext(context)), //
  );
}

@widget
Widget _bulletPoints(final BuildContext context, final List<String> bulletPoints) {
  assert(context != null && bulletPoints != null);
  return Padding(
    padding: EdgeInsets.only(left: 40, top: 10),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: bulletPoints.map((bulletPoint) => _BulletPoint(bulletPoint)).toList()),
  );
}

@widget
Widget _bulletPoint(final BuildContext context, final String bulletPoint) {
  assert(context != null && bulletPoint != null);
  return Padding(
    padding: const EdgeInsets.only(bottom: 0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top: 9, right: 10),
            child: SizedBox(
                width: 10,
                height: 10,
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  elevation: 2,
                ))),
        Flexible(
          child: Text(bulletPoint, style: body1TextStyleFromContext(context)),
        ),
      ],
    ),
  );
}

@widget
Widget _separatorLine(final BuildContext context) {
  assert(context != null);
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 50, right: 30),
    child: Container(
      width: double.maxFinite,
      height: 1,
      decoration: BoxDecoration(color: Colors.grey),
    ),
  );
}

@widget
Widget timelineCard(
  BuildContext context, {
  @required final String title,
  final List<TimelineEntry> timelineEntries,
  @required final double indicatorLength,
}) {
  return BodyCard(
    title: title,
    child: Padding(
      padding: EdgeInsets.fromLTRB(R.MARGIN_CARD, 0, R.MARGIN_CARD, R.MARGIN_CARD),
      child: Stack(
        children: <Widget>[_IndicatorLine(indicatorLength), _Entries(timelineEntries)],
      ),
    ),
  );
}

@widget
Widget _indicatorLine(final BuildContext context, final double indicatorLength) {
  assert(context != null && indicatorLength != null && indicatorLength >= 0);
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 20, 8, 0),
    child: SizedBox(
      height: indicatorLength,
      child: Material(
        color: Colors.transparent,
        elevation: 3,
        shape: StadiumBorder(),
        child: Container(
          width: 10,
          child: RawMaterialButton(
            shape: StadiumBorder(),
            fillColor: Colors.white,
          ),
        ),
      ),
    ),
  );
}

@widget
Widget _entries(final BuildContext context, final List<TimelineEntry> timelineEntries) {
  assert(context != null && timelineEntries != null);
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: timelineEntries, //_timelineEntriesWithTitle(context),
  );
}
