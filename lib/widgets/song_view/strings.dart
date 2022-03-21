import 'package:flutter/material.dart';

import '../common/app_theme.dart';

class Strings extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const string1sp = Offset(120, 0);
    const string1ep = Offset(80, 400);

    const string2sp = Offset(185, 0);
    const string2ep = Offset(160, 400);

    const string3sp = Offset(245, 0);
    const string3ep = Offset(256, 400);

    const string4sp = Offset(300, 0);
    const string4ep = Offset(320, 180);

    const string4blsp = Offset(325, 250);
    const string4blep = Offset(340, 400);

    const bottomLineSp = Offset(30, 400);
    const bottomLineEp = Offset(380, 400);

    final string1 = Paint()
      ..color = Colors.grey
      ..strokeWidth = 5;
    final string2 = Paint()
      ..color = Colors.grey
      ..strokeWidth = 4;
    final string3 = Paint()
      ..color = Colors.grey
      ..strokeWidth = 3;
    final string4 = Paint()
      ..color = AppTheme.colors['green'] as Color
      ..strokeWidth = 5;
    final bottomPaint = Paint()
      ..color = AppTheme.colors['grey'] as Color
      ..strokeWidth = 14;

    canvas.drawLine(string1sp, string1ep, string1);
    canvas.drawLine(string2sp, string2ep, string2);
    canvas.drawLine(string3sp, string3ep, string3);
    canvas.drawLine(string4sp, string4ep, string4);
    final textStyle = TextStyle(
      color: AppTheme.colors['green'],
      fontSize: 50,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    );
    final textSpan = TextSpan(
      text: '3',
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final xCenter = (size.width - textPainter.width) + 310;
    final yCenter = (size.height - textPainter.height) / 2;
    final offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);
    canvas.drawLine(string4blsp, string4blep, string4);
    canvas.drawLine(bottomLineSp, bottomLineEp, bottomPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
