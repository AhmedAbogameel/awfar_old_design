import 'dart:io';
import 'package:awfar/views/profile/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'constants.dart';
import 'core/router/router.dart';
import 'widgets/pop_scaffold.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // AppStorage.init();
  await FlutterStatusbarcolor.setStatusBarColor(kPrimaryColor);
  // LocalNotification.listen();
  runApp(AppEntry());
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => SafeArea(
        bottom: Platform.isAndroid,
        child: Directionality(
          child: PopScaffold(child: child),
          textDirection: TextDirection.rtl,
        ),
      ),
      theme: theme,
      onGenerateRoute: onGenerateRoute,
      navigatorKey: navigatorKey,
      home: ProfileView(),
      debugShowCheckedModeBanner: false,
    );
  }
}