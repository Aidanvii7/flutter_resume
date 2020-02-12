import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/body/timeline_card.dart';

part 'work_card.g.dart';

@widget
Widget workCard(final BuildContext context) {
  assert(context != null);
  return TimelineCard(
    title: 'Experience',
    indicatorLength: 960,
    timelineEntries: const <TimelineEntry>[
/*      TimelineEntry(
        place: 'Digital Barriers',
        fromTo: "Jan 2020 - Apr 2020",
        title: 'Software Engineer',
        bulletPoints: <String>[
          'Adding new features to the EdgeVis Client app for Android.',
          'Working with Windows and iOS to ensure feature parity across client software.'
        ],
      ),*/
      TimelineEntry(
        place: 'SportTotal.tv',
        fromTo: "Apr 2018 - Oct 2019",
        title: 'Senior Android Engineer',
        bulletPoints: <String>[
          'Worked as part of a small co-located agile team to build a new mobile and tablet app from the ground up.',
          'Frequently paired with iOS engineers to ensure feature parity on both platforms.',
          'Helped adopt modern architectural patterns such as MVVM using the Android data-binding framework.',
          'Integrated my own open source libraries into this project, eliminating vast amounts of boilerplate that is usually involved when implementing MVVM.',
          'Built with 100% Kotlin with a strict unit testing policy for new features.',
        ],
      ),
      TimelineEntry(
        place: "Viacom",
        fromTo: "Jun 2016 - Mar 2018",
        title: 'Android Engineer',
        bulletPoints: <String>[
          'Worked as part of a large distributed agile team. First on the Nickelodeon app for kids, later on a global app platform that covers multiple Viacom brands such as MTV, Comedy Central, VH1, BET, Spike and Paramount.',
          'Quickly became part of a foundation team that was responsible for many architectural decisions within the apps.',
          'Encouraged to move freely between feature teams, giving guidance, as well as assisting in implementation.',
          'Responsible for building reusable components that would be used across feature teams.',
          'Giving guidance on writing idiomatic Kotlin code to other developers who were new to the language, and often praised for giving high quality, constructive feedback on pull requests for this.'
        ],
      ),
      TimelineEntry(
        place: "Digital Barriers",
        fromTo: "May 2014 - May 2016",
        title: 'Junior Android Engineer',
        bulletPoints: <String>[
          'Worked in a cross platform team where we created a new viewing platform for Android, iOS and Windows.',
          'Focussed primarily on the Android app, but worked closely with iOS and Windows engineers for feature parity.',
          'Contributed to our cross platform SDK built in C++.',
          "Helped influence the design of the app from it's early conceptual stages.",
          'Praised for demonstrating new ideas to the rest of the team, which were then implemented similarly on iOS and Windows.'
        ],
      ),
      TimelineEntry(
        place: "Digital Barriers",
        fromTo: "Aug 2012 - May 2014",
        title: 'QA Engineer',
        bulletPoints: <String>[
          'Performed acceptance, regression and load testing on applications and embedded platforms using automated and manual testing methods.',
          'Responsible for defining test cases for new features and bug reporting.',
          'Provided front line support to customers around the world.',
        ],
      ),
    ],
  );
}
