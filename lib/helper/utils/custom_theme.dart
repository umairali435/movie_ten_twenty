import 'package:flutter/material.dart';
import 'package:movies_app/constants/constants.dart';
import 'package:movies_app/constants/size.dart';

/// A utility class that holds themes for the app.
/// This class has no constructor and all methods are `static`.
@immutable
class CustomTheme {
  const CustomTheme._();

  /// The main starting theme for the app.
  ///
  /// Sets the following defaults:
  /// * primaryColor: [Constants.primaryColor],
  /// * scaffoldBackgroundColor: [Constants.scaffoldColor],
  /// * fontFamily: [Constants.poppinsFont].fontFamily,
  /// * iconTheme: [Colors.white] for default icon
  /// * textButtonTheme: [TextButtonTheme] without the default padding,
  static late final mainTheme = ThemeData(
    primaryColor: Constants.blue,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Constants.primaryColor,
      primaryVariant: Constants.primaryColor,
      secondary: Constants.primaryColor,
      secondaryVariant: Constants.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: Constants.black,
        labelStyle: TextStyle(
          fontSize: 15,
          color: Constants.textFieldHintColor,
        ),
        fillColor: Constants.black,
        suffixIconColor: Constants.black,
        hintStyle: TextStyle(
          fontSize: 15,
          color: Constants.textFieldHintColor,
        )),
    primaryIconTheme: IconThemeData(color: Constants.black),
    appBarTheme:
        AppBarTheme(backgroundColor: Constants.whiteColor, elevation: 0.3),
    scaffoldBackgroundColor: Constants.textWhiteColor,
    fontFamily: Constants.poppinsFont.fontFamily,
    textTheme: TextTheme(
      headline1: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 50,
        height: 1.15,
      ),
      headline2: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 50,
        height: 1.15,
      ),
      headline3: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 26,
        height: 1.15,
      ),
      headline4: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 26,
        height: 1.15,
      ),
      headline5: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: 20,
        height: 1.15,
      ),
      headline6: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: 20,
        height: 1.15,
      ),
      subtitle1: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w200,
      ),
      subtitle2: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w200,
      ),
      bodyText1: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w400,
      ),
      bodyText2: Constants.poppinsFont.copyWith(
        fontWeight: FontWeight.w400,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
    ),
    iconTheme: const IconThemeData(color: Colors.black, size: 14),
  );
}
