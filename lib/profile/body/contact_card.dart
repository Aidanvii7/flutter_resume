import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_resume/profile/body/body_card.dart';
import 'package:flutter_resume/resources/custom_icons.dart';
import 'package:flutter_resume/utils.dart';

part 'contact_card.g.dart';

@widget
Widget contactCard(BuildContext context) {
  return BodyCard(
    title: 'Contact',
    child: _ContactEntries(),
  );
}

@widget
Widget _contactEntries(final BuildContext context) {
  assert(context != null);
  return Column(
    children: <Widget>[
      _ContactEntry(
          title: 'Mobile',
          info: '+49 176 214 18647',
          iconData: Icons.phone,
      ),
      _ContactEntry(
          title: 'Email',
          info: 'aidan.vii@gmail.com',
          iconData: Icons.mail,
      ),
      _ContactEntry(
          title: 'Location',
          info: 'Berlin, Germany',
          iconData: Icons.location_on,
      ),
      _ContactEntry(
          title: 'Medium',
          info: '/@aidan.vii',
          iconData: CustomIcons.mediumCircleFilled,
      ),
      _ContactEntry(
          title: 'Github',
          info: '/Aidanvii7',
          iconData: CustomIcons.githubCircleFilled,
      ),
      _ContactEntry(
          title: 'LinkedIn',
          info: '/aidanmcwilliams',
          iconData: CustomIcons.linkedinSquareFilled,
      ),
      _ContactEntry(
          title: 'XING',
          info: '/Aidan_Mcwilliams',
          iconData: CustomIcons.xingCircleFilled,
      ),
    ],
  );
}

@widget
Widget _contactEntry(final BuildContext context, {
  @required final String title,
  @required final String info,
  @required final IconData iconData
}) {
  assert(context != null && title != null && info != null && iconData != null);
  return Row(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 8),
        child: Icon(iconData, color: accentColor(context)),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
              style: body1TextStyleFromContext(context).copyWith(
                  fontSize: 20
              )
          ),
          Text(info,
              style: captionThemeFromContext(context).copyWith(
                fontSize: 18,
              )
          ),
          Container(
            width: 200,
            height: 1,
            decoration: BoxDecoration(color: Colors.grey),
          )
        ],
      )
    ],
  );
}
