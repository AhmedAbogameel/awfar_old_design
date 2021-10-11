import 'package:awfar/constants.dart';
import 'package:awfar/views/drawer/components/profile_section.dart';
import 'package:awfar/views/drawer/view.dart';
import 'package:awfar/views/profile/components/confirm_button.dart';
import 'package:awfar/views/profile/components/fields.dart';
import 'package:awfar/widgets/app_bar.dart';
import 'package:awfar/widgets/confirm_button.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('',backgroundColor: kPrimaryColor),
      drawer: AppDrawer(),
      body: Column(
        children: [
          DrawerProfileSection(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                ProfileFields(),
                ProfileConfirmButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}