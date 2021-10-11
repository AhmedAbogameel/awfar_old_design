import 'dart:io';

import 'package:flutter/cupertino.dart';

class PopScaffold extends StatelessWidget {
  final Widget child;

  PopScaffold({@required this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: Platform.isIOS ? ()=> FocusScope.of(context)..unfocus()..requestFocus(FocusNode()) : null,
    );
  }
}
