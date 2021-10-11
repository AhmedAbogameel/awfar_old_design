import 'package:awfar/constants.dart';
import 'package:awfar/views/signUp/cubits/terms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpTermsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final termsCubit = SignUpTermsCubit.get(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text('أوافق علي '),
          Text('الشروط والاحكام',style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.w900),),
          Spacer(),
          BlocBuilder(
            bloc: termsCubit,
            builder: (context, state) => Checkbox(
              value: termsCubit.isAgreed,
              onChanged: termsCubit.agree,
            ),
          ),
        ],
      ),
    );
  }
}
