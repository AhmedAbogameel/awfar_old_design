import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class InputFormField extends StatefulWidget {
  final String hint;
  final Function(String) validator;
  final Function onPressed;
  final bool secure;
  final bool isNumber;
  final Function(String) onSave;
  final int maxLines;
  final IconData icon;
  final Widget suffixIcon;
  final TextEditingController controller;
  final Function(String) onChanged;
  final Function onTap;
  final bool isNext;
  final int maxLength;
  final String upperText;
  final bool hasLabel;
  final Color textColor;
  final bool isRTL;
  final double horizontalMargin;
  final bool multiLine;
  final Color fillColor;
  InputFormField({this.isNumber = false,this.controller,this.maxLines = 1,this.onPressed,this.onSave,this.secure = false,this.hint,this.validator, this.onChanged, this.suffixIcon, this.onTap, this.isNext = true, this.maxLength, this.upperText, this.hasLabel = false, this.isRTL = false, this.icon, this.textColor, this.horizontalMargin = 0, this.multiLine = false, this.fillColor});

  @override
  _InputFormFieldState createState() => _InputFormFieldState();
}

class _InputFormFieldState extends State<InputFormField> {
  final BorderRadius borderRadius = BorderRadius.circular(25);
  bool _showPassword;
  @override
  void initState() {
    _showPassword = widget.secure;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: widget.horizontalMargin),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(widget.upperText != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(widget.upperText,style: TextStyle(fontWeight: FontWeight.w900),),
              ),
            TextFormField(
              controller: widget.controller,
              obscureText: _showPassword,
              onSaved: widget.onSave,
              onChanged: widget.onChanged,
              maxLength: widget.maxLength,
              textInputAction: widget.multiLine ? TextInputAction.newline : widget.isNext ? TextInputAction.next : TextInputAction.done,
              keyboardType: widget.multiLine ? TextInputType.multiline : widget.isNumber ? TextInputType.number : TextInputType.emailAddress,
              cursorColor: kPrimaryColor,
              validator: widget.validator,
              maxLines: widget.maxLines,
              enabled: widget.onTap == null,
              buildCounter: (context, {currentLength, isFocused, maxLength}) => null,style: TextStyle(color: widget.textColor),
              decoration: InputDecoration(
                filled: true,
                hintStyle: TextStyle(color: widget.textColor,fontSize: 14),
                labelStyle: TextStyle(color: widget.textColor),
                fillColor: widget.fillColor ?? Color(0xFFEFEFEF),
                counterStyle: TextStyle(fontSize: 0,color: Colors.transparent),
                prefixIcon: widget.icon == null ? null : Icon(widget.icon,color: kPrimaryColor,size: 18,),
                suffixIcon: widget.suffixIcon != null ? widget.suffixIcon : widget.secure ? IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    _showPassword ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                    color: kPrimaryColor,
                    size: 18,
                  ),
                  onPressed: ()=> setState(()=> _showPassword = !_showPassword),
                ) : null,
                hintText: widget.hasLabel ? null : widget.hint,
              labelText: widget.hasLabel ? widget.hint : null,
                contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: widget.maxLines == 1 ? 0 : 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(color: Colors.black26),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(color: kPrimaryColor),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(color: kPrimaryColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(color: Colors.black26),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
