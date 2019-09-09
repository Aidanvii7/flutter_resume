import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/body/body_card.dart';
import 'package:flutter_resume/utils.dart';

part 'skills_card.g.dart';

@widget
Widget skillsCard(final BuildContext context) {
  return BodyCard(
    title: 'Skills',
    child: _SkillEntries(),
  );
}

@widget
Widget _skillEntries(final BuildContext context) {
  assert(context != null);
  // TODO adjust levels
  return Column(
    children: <Widget>[
      ..._buildMainSection(context),
      ..._buildArchitectureSection(context),
      ..._buildTestingSection(context),
      ..._buildThirdPartySection(context),
    ],
  );
}

List<Widget> _buildMainSection(final BuildContext context) {
  return <Widget>[
    _SubHeader('Languages'),
    _SkillEntry(
      name: 'Kotlin',
      level: 90,
    ),
    _SkillEntry(
      name: 'Java',
      level: 80,
    ),
    _SkillEntry(
      name: 'Dart',
      level: 70,
    ),
  ];
}

List<Widget> _buildArchitectureSection(final BuildContext context) {
  return <Widget>[
    _SubHeader('Architecture'),
    _SkillEntry(
      name: 'Data Binding',
      level: 100,
    ),
    _SkillEntry(
      name: 'Lifecycle',
      level: 90,
    ),
    _SkillEntry(
      name: 'LiveData',
      level: 65,
    ),
    _SkillEntry(
      name: 'Room',
      level: 50,
    )
  ];
}

List<Widget> _buildTestingSection(final BuildContext context) {
  return <Widget>[
    _SubHeader('Testing'),
    _SkillEntry(
      name: 'JUnit5',
      level: 90,
    ),
    _SkillEntry(
      name: 'Mockito',
      level: 90,
    ),
    _SkillEntry(
      name: 'Kluent',
      level: 90,
    )
  ];
}

List<Widget> _buildThirdPartySection(final BuildContext context) {
  return <Widget>[
    _SubHeader('Other'),
    _SkillEntry(
      name: 'Retrofit2',
      level: 90,
    ),
    _SkillEntry(
      name: 'Koin',
      level: 85,
    ),
    _SkillEntry(
      name: 'Dagger2',
      level: 60,
    ),
    _SkillEntry(
      name: 'Kotlin Coroutines',
      level: 60,
    ),
    _SkillEntry(
      name: 'RxJava',
      level: 75,
    )
  ];
}

@widget
Widget _skillEntry(final BuildContext context, {
  @required final String name,
  @required final double level
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(name),
        ),
        SizedBox(
          height: 20,
          child: Slider(
            min: 0,
            max: 100,
            value: level,
            label: "HELLO",
            activeColor: accentColor(context),
            inactiveColor: accentColor(context).withAlpha(100),
            onChanged: (_) {},
          ),
        )
      ],
    ),
  );
}

@widget
Widget _subHeader(final BuildContext context, final String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,
            style: body1TextStyleFromContext(context).copyWith(fontSize: 25)
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            height: 1,
            decoration: BoxDecoration(color: Colors.grey),
          ),
        )
      ],
    ),
  );
}

