import 'package:flutter/material.dart';

/* COLORS */

const Color COLOR_PRIMARY = Color(0xff323283);
const Color COLOR_TEXT = Color(0xffFFFFFF);
const Color COLOR_TEXT_LIGHT = Color(0xff181818);
const Color COLOR_BACKGROUND = Color(0xff181818);
const Color COLOR_GREY = Color(0xffAAAAAA);
const Color COLORS_WHISPER = Color(0xffF8F8FF);

/* TEXT STYLE LIGHT */
const TextStyle TEXT_APPBAR = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
const TextStyle TEXT_TITLE = TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.bold,
);
const TextStyle TEXT_SUBTITLE = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w600,
);
const TextStyle TEXT_SECTION = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w500,
);
const TextStyle TEXT_BODY = TextStyle(fontSize: 14);
const TextStyle TEXT_DETAIL = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w300,
);
const TextStyle TEXT_BODY_BOLD = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
);
const TextStyle TEXT_DETAIL_NAME = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: COLOR_TEXT_LIGHT,
);
TextStyle TEXT_DETAIL_DESC = TextStyle(
  fontSize: 14,
  color: Colors.grey[700],
  height: 1.5,
);

/* TEXT STYLE DARK */
const TextStyle TEXT_APPBAR_DARK = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: COLOR_TEXT,
);
const TextStyle TEXT_TITLE_DARK = TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.bold,
  color: COLOR_TEXT,
);
const TextStyle TEXT_SUBTITLE_DARK = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w600,
  color: COLOR_TEXT,
);
const TextStyle TEXT_SECTION_DARK = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w500,
  color: COLOR_TEXT,
);
const TextStyle TEXT_BODY_DARK = TextStyle(fontSize: 14, color: COLOR_TEXT);
const TextStyle TEXT_DETAIL_DARK = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w300,
  color: COLOR_TEXT,
);
const TextStyle TEXT_BODY_BOLD_DARK = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: COLOR_TEXT,
);
const TextStyle TEXT_PLACEHOLDER = TextStyle(
  fontSize: 14,
  color: Color.fromRGBO(18, 18, 18, 0.5),
);
