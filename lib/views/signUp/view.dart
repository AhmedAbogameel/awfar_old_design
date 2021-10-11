import 'package:awfar/views/signUp/components/confirm_button.dart';
import 'package:awfar/views/signUp/components/fields.dart';
import 'package:awfar/views/signUp/components/terms_section.dart';
import 'package:awfar/views/signUp/cubits/terms.dart';
import 'package:awfar/views/signUp/states/terms.dart';
import 'package:awfar/widgets/logo.dart';
import 'package:awfar/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SignUpTermsCubit(),),
      ],
      child: Scaffold(
        body: ListView(
          children: [
            Logo(withShape: true),
            TitleText('أنشاء حساب جديد'),
            SignUpFields(),
            SignUpTermsSection(),
            SignUpConfirmButton(),
          ],
        ),
      ),
    );
  }
}