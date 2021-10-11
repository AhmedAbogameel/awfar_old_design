import 'package:awfar/views/editPassword/components/fields.dart';
import 'package:awfar/widgets/logo.dart';
import 'package:awfar/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'components/confirm_button.dart';

class EditPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Logo(withShape: true),
          TitleText('كلمة مرور جديدة'),
          EditPasswordFields(),
          EditPasswordConfirmButton(),
        ],
      ),
    );
  }
}
