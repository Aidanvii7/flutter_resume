import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/body/contact_card.dart';
import 'package:flutter_resume/profile/body/education_card.dart';
import 'package:flutter_resume/profile/body/skills_card.dart';
import 'package:flutter_resume/profile/body/work_card.dart';
import 'package:flutter_resume/resources/R.dart';

part 'body_card_grid.g.dart';

@widget
Widget bodyCardGrid(final BuildContext context) {
  assert(context != null);
  return Expanded(
    child: Row(
      children: const <Widget>[
        _SideColumn(),
        _MainColumn(),
      ],
    ),
  );
}

@widget
Widget _mainColumn(final BuildContext context) {
  assert(context != null);
  return Expanded(
    flex: 12,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _WorkCard(),
        _EducationCard(),
      ],
    ),
  );
}

@widget
Widget _workCard(final BuildContext context) {
  assert(context != null);
  return Expanded(
    flex:17,
    child: Padding(
      padding: EdgeInsets.all(R.PADDING_CARD),
      child: WorkCard(),
    ),
  );
}

@widget
Widget _educationCard(final BuildContext context) {
  assert(context != null);
  return Expanded(
    flex: 7,
    child: Padding(
      padding: EdgeInsets.all(R.PADDING_CARD),
      child: EducationCard(),
    ),
  );
}

@widget
Widget _sideColumn(final BuildContext context) {
  assert(context != null);
  return Expanded(
    flex: 3,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _ContactsCard(),
        _SkillsCard(),
      ],
    ),
  );
}

@widget
Widget _skillsCard(final BuildContext context) {
  assert(context != null);
  return Expanded(
    flex: 9,
    child: Padding(
      padding: EdgeInsets.all(R.PADDING_CARD),
      child: SkillsCard(),
    ),
  );
}

@widget
Widget _contactsCard(final BuildContext context) {
  assert(context != null);
  return Expanded(
    flex: 4,
    child: Padding(
      padding: EdgeInsets.all(R.PADDING_CARD),
      child: ContactCard(),
    ),
  );
}