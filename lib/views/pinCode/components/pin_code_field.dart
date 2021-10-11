import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../constants.dart';

class PinCodeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final controller = PinCodeController.get(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          cursorColor: kPrimaryColor,
          backgroundColor: Colors.transparent,
          autoDisposeControllers: true,
          autoDismissKeyboard: true,
          enablePinAutofill: true,
          keyboardType: TextInputType.number,
          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: kAccentColor),
          pastedTextStyle: TextStyle(color: kAccentColor),
          // validator: Validator.pinCode,
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.circle,
              selectedColor: kPrimaryColor,
              // borderRadius: BorderRadius.circular(10),
              activeColor: kPrimaryColor,
              inactiveColor: kPrimaryColor,
              fieldWidth: sizeFromWidth(6.5),
            fieldOuterPadding: EdgeInsets.zero,
          ),
          appContext: context,
          length: 4,
          // onChanged: (v)=> controller.code = v,
        ),
      ),
    );
  }
}
