import 'package:awfar/constants.dart';
import 'package:awfar/views/pinCode/cubits/resend_code.dart';
import 'package:awfar/views/pinCode/states/resend_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResendCodeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final resendCubit = ResendCodeCubit.get(context);
    return BlocBuilder(
      bloc: resendCubit,
      builder: (context, state) => state is ResendCodeFinished
          ? _resendButton(resendCubit)
          : _countingWidget(resendCubit),
    );
  }

  Widget _countingWidget(ResendCodeCubit resendCubit)=> Padding(
    padding: const EdgeInsets.all(15),
    child: Text('00:' + resendCubit.seconds.toString().padLeft(2, '0'),
      style: TextStyle(color: kDimGrayColor, fontWeight: FontWeight.bold, fontSize: 15),
      textAlign: TextAlign.center,
    ),
  );

  Widget _resendButton(ResendCodeCubit resendCubit)=> TextButton(
      onPressed: () {
        resendCubit.count();
      },
      child: Text('اعادة ارسال الكود'),
  );
}
