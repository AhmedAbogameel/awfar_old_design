import 'package:awfar/core/router/router.dart';
import 'package:awfar/views/AppInfo/view.dart';
import 'package:awfar/views/drawer/view.dart';
import 'package:awfar/views/editPassword/view.dart';
import 'package:awfar/views/profile/view.dart';
import 'package:awfar/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsView extends StatelessWidget {

  final _content = [
    ['الحساب',FontAwesomeIcons.user, ProfileView()],
    ['تعديل كلمة المرور',FontAwesomeIcons.key, EditPasswordView()],
    ['حول التطبيق',FontAwesomeIcons.info, AppInfoView()],
    ['اشترك معنا ككابتن اوفر',FontAwesomeIcons.car, Text('')],
    ['الشروط والاحكام',FontAwesomeIcons.userShield, AppInfoView()],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('الاعدادات'),
      drawer: AppDrawer(),
      body: ListView.separated(
        padding: EdgeInsets.all(20),
          itemBuilder: (context, index) {
            final content = _content[index];
            return ListTile(
              dense: true,
              leading: Icon(content[1]),
              title: Text(content[0]),
              onTap: ()=> MagicRouter.navigateTo(content[2]),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: _content.length,
      ),
    );
  }
}
