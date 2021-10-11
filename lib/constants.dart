import 'package:flutter/material.dart';

import 'core/router/router.dart';
import 'widgets/toast.dart';

const DefaultErrorMessage = 'حدث خطأ اثناء تنفيذ طلبكم!';

const String MAP_API_KEY = 'AIzaSyCRPU7k70M3o1JLJAbXiiJ6KscWWZhjbkI';

String getAsset(String imageName) => 'assets/images/$imageName.png';

void showDefaultErrorMessage ({bool primaryColor = true,bool tryAgainMessage = false})=> showToast(DefaultErrorMessage + ' جاري اعادة المحاولة',primaryColor: primaryColor);

String get getTodayDateCustomized {
  final now = DateTime.now();
  final date = '${now.year}-${now.month.toString().padLeft(2,'0')}-${now.day.toString().padLeft(2,'0')}';
  return date;
}

String getOrderStatus(String value){
  if(value == '0')
    return "طلب قيد الانتظار";
  else if(value == '1')
    return  "طلب قيد التنفيذ";
  else if(value == '2')
    return "طلب منتهي";
  else
    return "طلب ملغي";
}

const Color kPrimaryColor = Color(0xFFF1A421);
const Color kAccentColor = Color(0xFF8B8B8B);
const Color kMantleColor = Color(0xFF8CA888);
const Color kDimGrayColor = Color(0xFF6D6D6D);

ThemeData theme = ThemeData(
  platform: TargetPlatform.iOS,
  primaryColor: kPrimaryColor,
  accentColor: kAccentColor,
  // cursorColor: kPrimaryColor,
  // canvasColor: Colors.white.withOpacity(0.9),
  fontFamily: 'Tajawal',
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kDimGrayColor)
    ),
  ),
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
    subtitle1: TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
    // body1: TextStyle(fontSize: 15,color: kPrimaryColor),
    // body2: TextStyle(fontSize: 15,color: kAccentColor),
  ),
);

final containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    border: Border.all(color: Colors.black54, width: 0.2));

void closeKeyboard() => FocusScope.of(MagicRouter.currentContext).unfocus();

TextTheme getTextTheme() => Theme.of(MagicRouter.currentContext).textTheme;

double sizeFromHeight(double fraction,
    {bool removeAppBarSize = true}) {
  MediaQueryData mediaQuery = MediaQuery.of(MagicRouter.currentContext);
  fraction = (removeAppBarSize
          ? (mediaQuery.size.height -
              AppBar().preferredSize.height -
              mediaQuery.padding.top)
          : mediaQuery.size.height) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(double fraction) {
  fraction = MediaQuery.of(MagicRouter.currentContext).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}
