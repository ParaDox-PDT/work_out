import 'package:flutter/material.dart';

const _h1Size = 64.0;
const _h1LineHeight = 46.0;

const _h2Size = 55.0;
const _h2LineHeight = 42.0;

const _h3Size = 36.0;
const _h3LineHeight = 46.0;

const _h4Size = 31.0;
const _h4LineHeight = 42.0;

const _headlineSize = 22.0;
const _headlineLineHeight = 26.4;

const _bodySize = 17.0;
const _bodyLineHeight = 22.0;

const _captionSize = 15.0;
const _captionLineHeight = 22.0;

const _footnoteSize = 13.0;
const _footnoteLineHeight = 16.0;

const _smallSize = 11.0;
const _smallLineHeight = 13.0;

class AppTypography {
  AppTypography._();

  static const fontFamily = 'FiraSans';

  // HEADER 1
  static const h1Regular = TextStyle(
      fontSize: _h1Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _h1LineHeight / _h1Size,
      color: Colors.white);

  static const h1Medium = TextStyle(
      fontSize: _h1Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _h1LineHeight / _h1Size,
      color: Colors.white);

  static const h1SemiBold = TextStyle(
      fontSize: _h1Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _h1LineHeight / _h1Size,
      color: Colors.white);

  static const h1Bold = TextStyle(
      fontSize: _h1Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _h1LineHeight / _h1Size,
      color: Colors.white);

  // HEADER 2
  static const h2Regular = TextStyle(
      fontSize: _h2Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _h2LineHeight / _h2Size,
      color: Colors.white);

  static const h2Medium = TextStyle(
      fontSize: _h2Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _h2LineHeight / _h2Size,
      color: Colors.white);

  static const h2SemiBold = TextStyle(
      fontSize: _h2Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _h2LineHeight / _h2Size,
      color: Colors.white);

  static const h2Bold = TextStyle(
      fontSize: _h2Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _h2LineHeight / _h2Size,
      color: Colors.white);

  // HEADER 3
  static const h3Regular = TextStyle(
      fontSize: _h3Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _h3LineHeight / _h3Size,
      color: Colors.white);

  static const h3Medium = TextStyle(
      fontSize: _h3Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _h3LineHeight / _h3Size,
      color: Colors.white);

  static const h3SemiBold = TextStyle(
      fontSize: _h3Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _h3LineHeight / _h3Size,
      color: Colors.white);

  static const h3Bold = TextStyle(
      fontSize: _h3Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _h3LineHeight / _h3Size,
      color: Colors.white);

  // HEADER 4
  static const h4Regular = TextStyle(
      fontSize: _h4Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _h4LineHeight / _h4Size,
      color: Colors.white);

  static const h4Medium = TextStyle(
      fontSize: _h4Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _h4LineHeight / _h4Size,
      color: Colors.white);

  static const h4SemiBold = TextStyle(
      fontSize: _h4Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _h4LineHeight / _h4Size,
      color: Colors.white);

  static const h4Bold = TextStyle(
      fontSize: _h4Size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _h4LineHeight / _h4Size,
      color: Colors.white);

  // HEADLINE
  static const headlineRegular = TextStyle(
      fontSize: _headlineSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _headlineLineHeight / _headlineSize,
      color: Colors.white);

  static const headlineMedium = TextStyle(
      fontSize: _headlineSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _headlineLineHeight / _headlineSize,
      color: Colors.white);

  static const headlineSemiBold = TextStyle(
      fontSize: _headlineSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _headlineLineHeight / _headlineSize,
      color: Colors.white);

  static const headlineBold = TextStyle(
      fontSize: _headlineSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _headlineLineHeight / _headlineSize,
      color: Colors.white);

  // BODY
  static const bodyRegular = TextStyle(
      fontSize: _bodySize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _bodyLineHeight / _bodySize,
      color: Colors.white);

  static const bodyMedium = TextStyle(
      fontSize: _bodySize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _bodyLineHeight / _bodySize,
      color: Colors.white);

  static const bodySemiBold = TextStyle(
      fontSize: _bodySize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _bodyLineHeight / _bodySize,
      color: Colors.white);

  static const bodyBold = TextStyle(
      fontSize: _bodySize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _bodyLineHeight / _bodySize,
      color: Colors.white);

  // CAPTION
  static const captionRegular = TextStyle(
      fontSize: _captionSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _captionLineHeight / _captionSize,
      color: Colors.white);

  static const captionMedium = TextStyle(
      fontSize: _captionSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _captionLineHeight / _captionSize,
      color: Colors.white);

  static const captionSemiBold = TextStyle(
      fontSize: _captionSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _captionLineHeight / _captionSize,
      color: Colors.white);

  static const captionBold = TextStyle(
      fontSize: _captionSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _captionLineHeight / _captionSize,
      color: Colors.white);

  // PARAGRAPH
  static const footnoteRegular = TextStyle(
      fontSize: _footnoteSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _footnoteLineHeight / _footnoteSize,
      color: Colors.white);

  static const footnoteMedium = TextStyle(
      fontSize: _footnoteSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _footnoteLineHeight / _footnoteSize,
      color: Colors.white);

  static const footnoteSemiBold = TextStyle(
      fontSize: _footnoteSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _footnoteLineHeight / _footnoteSize,
      color: Colors.white);

  static const footnoteBold = TextStyle(
      fontSize: _footnoteSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _footnoteLineHeight / _footnoteSize,
      color: Colors.white);

  // SMALL
  static const smallRegular = TextStyle(
      fontSize: _smallSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      height: _smallLineHeight / _smallSize,
      color: Colors.white);

  static const smallMedium = TextStyle(
      fontSize: _smallSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      height: _smallLineHeight / _smallSize,
      color: Colors.white);

  static const smallSemiBold = TextStyle(
      fontSize: _smallSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      height: _smallLineHeight / _smallSize,
      color: Colors.white);

  static const smallBold = TextStyle(
      fontSize: _smallSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: _smallLineHeight / _smallSize,
      color: Colors.white);
}
