import 'package:awfar/core/router/router.dart';
import 'package:awfar/views/drawer/components/profile_section.dart';
import 'package:awfar/views/profile/view.dart';
import 'package:awfar/views/setting/view.dart';
import 'package:awfar/views/trips/view.dart';
import 'package:awfar/views/welcome/view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {

  final _content = [
    ['الواجهة',FontAwesomeIcons.mapMarkerAlt,Text('')],
    ['الرحلات',FontAwesomeIcons.car, TripsView()],
    ['الحساب',FontAwesomeIcons.user,ProfileView()],
    // ['التنبيهات',FontAwesomeIcons.mapMarkerAlt,Text('')],
    ['الأعدادات',FontAwesomeIcons.cogs, SettingsView()],
    ['تسجيل الخروج',FontAwesomeIcons.signOutAlt, WelcomeView()],
    ['تسجيل الدخول',FontAwesomeIcons.signInAlt, WelcomeView()],
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerProfileSection(),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            itemCount: _content.length,
            itemBuilder: (context, index) {
              final content = _content[index];
              return ListTile(
                dense: true,
                leading: Icon(content[1]),
                title: Text(content[0]),
                onTap: ()=>
                    // MagicRouter.navigateAndPopAll(content[2]),
                index+1 == _content.length
                    ? MagicRouter.navigateAndPopAll(WelcomeView())
                    : MagicRouter.navigateTo(content[2]),
              );
            },
            separatorBuilder: (context, index) => Divider(thickness: 1.5,),
          )
        ],
      ),
    );
  }
}