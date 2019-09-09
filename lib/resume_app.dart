import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/lifecycle.dart';
import 'package:flutter_resume/page/page_outer.dart';
import 'package:flutter_resume/themes.dart';

part 'resume_app.g.dart';

@widget
Widget resumeApp(final BuildContext context) {
  assert(context != null);
  return MaterialApp(
    theme: LIGHT_THEME,
    home: Lifecycle(
      child: Container(
        color: Colors.black,
        child: PageOuter(),
      ),
      onInitState: () => SystemChrome.setEnabledSystemUIOverlays([]),
      onDispose: () => SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values),
    ),
  );
}