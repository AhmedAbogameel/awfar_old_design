import 'package:awfar/core/router/router.dart';
import 'package:awfar/views/pinCode/view.dart';
import 'package:awfar/views/signUp/cubits/terms.dart';
import 'package:awfar/widgets/confirm_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final termsCubit = SignUpTermsCubit.get(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: BlocBuilder(
        bloc: termsCubit,
        builder: (context, _) => ConfirmButton(
          title: 'انشاء',
          horizontalMargin: 20,
          onPressed: !termsCubit.isAgreed ? null : (){
            MagicRouter.navigateAndPopAll(PinCodeView());
          },
        ),
      ),
    );
  }
}
