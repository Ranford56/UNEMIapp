import 'package:flutter/material.dart';

//Paleta de colores ACUA
const COLOR_PRIMARY = Color.fromRGBO(254, 254, 254, 1);
const COLOR_SECONDARY = Color.fromRGBO(13, 45, 66, 1.0);
const COLOR_TERCIARY = Color.fromRGBO(252, 124, 0, 1);
const COLOR_CUART = Color.fromRGBO(189, 188, 188, 1);

//Colores obvios
const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_WHITE = Colors.white;

const TextTheme ACUA_M = TextTheme(
  headline1: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:26),
  headline2: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:22),
  headline3: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:20),
  headline4: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:16),
  headline5: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:14),
  headline6: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:12),
  bodyText1: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w500, fontSize:14, height: 1.5),
  bodyText2: TextStyle(
    color: COLOR_TERCIARY, fontWeight: FontWeight.w500, fontSize:14, height: 1.5),
  subtitle1: TextStyle(
    color: COLOR_CUART, fontSize: 12, fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
    color: COLOR_TERCIARY, fontSize: 12, fontWeight: FontWeight.w400),
);

const TextTheme ACUA_S = TextTheme(
  headline1: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:22),
  headline2: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:20),
  headline3: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:18),
  headline4: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:14),
  headline5: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:12),
  headline6: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w700, fontSize:10),
  bodyText1: TextStyle(
    color: COLOR_CUART, fontWeight: FontWeight.w500, fontSize:12, height: 1.5),
  bodyText2: TextStyle(
    color: COLOR_TERCIARY, fontWeight: FontWeight.w500, fontSize:12, height: 1.5),
  subtitle1: TextStyle(
    color: COLOR_CUART, fontSize: 10, fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
    color: COLOR_TERCIARY, fontSize: 10, fontWeight: FontWeight.w400),
);