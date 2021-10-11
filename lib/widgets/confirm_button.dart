import 'package:flutter/material.dart';
import '../constants.dart';

class ConfirmButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final double verticalMargin;
  final double horizontalMargin;
  final Color color;
  final bool border;
  final IconData icon;
  ConfirmButton({this.onPressed,this.title, this.verticalMargin = 0, this.horizontalMargin = 0, this.color = kPrimaryColor, this.border = false, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalMargin,horizontal: horizontalMargin),
      child: RaisedButton(
        splashColor: border ? color : null,
        elevation: border ? 0 : null,
        color: border ? Colors.transparent : color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: color,width: 2)),
        onPressed: onPressed,
        child: icon == null ? _textTitleWidget : Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(icon,color: Colors.white,size: 20,),
            ),
            _textTitleWidget,
          ],
        ),
      ),
    );
  }
  Widget get _textTitleWidget=> Text(
    this.title,
    style: TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold,color: border ? color : Colors.white),
  );
}