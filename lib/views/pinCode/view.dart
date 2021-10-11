import 'package:awfar/views/pinCode/components/confirm_button.dart';
import 'package:awfar/views/pinCode/components/pin_code_field.dart';
import 'package:awfar/views/pinCode/components/resend_code_section.dart';
import 'package:awfar/views/pinCode/cubits/resend_code.dart';
import 'package:awfar/views/pinCode/states/resend_code.dart';
import 'package:awfar/widgets/logo.dart';
import 'package:awfar/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/phone_section.dart';

class PinCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ResendCodeCubit()..count(),),
      ],
      child: Scaffold(
        body: ListView(
          children: [
            Logo(withShape: true,backButton: false,),
            TitleText('تفعيل الحساب'),
            PinCodePhoneSection(),
            PinCodeField(),
            PinCodeConfirmButton(),
            ResendCodeSection(),
          ],
        ),
      ),
    );
  }
}
