import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/body/timeline_card.dart';

part 'education_card.g.dart';

@widget
Widget educationCard(final BuildContext context) {
  // TODO customise
  return TimelineCard(
    title: 'Education',
    indicatorLength: 356,
    timelineEntries: const <TimelineEntry>[
      TimelineEntry(
        place: 'Glasgow Caledonian University',
        fromTo: '2007 - 2010',
        title: 'B.Sc. Games Software Development',
        highlight: '2:1 with Honours',
        bulletPoints: <String>[
          "Enhancing the Wii's motion tracking capabilities",
          'Key subjects: Software Process Management, '
              'Mobile & Ubiquitous Computing, '
              'Artificial Intelligence, '
              'Game Programming with C++ & DirectX, '
              'Game programming with C# & XNA, '
              'Console Programming with C++ & OpenGL, '
              'mathematics'
        ],
      ),
      TimelineEntry(
        place: 'Stow College',
        fromTo: '2006 - 2007',
        title: 'HNC Game Development',
        highlight: 'Grade A',
        bulletPoints: <String>[
          "Enhancing the Wii's motion tracking capabilities",
          'Key subjects: OOP with Java, Structured programming with Basic',
        ],
      ),
    ],
  );
}