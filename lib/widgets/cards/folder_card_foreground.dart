import 'package:flutter/material.dart';

class FolderCardForeground extends StatelessWidget {
  const FolderCardForeground({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    const folderSize = Size(203, 218);
    return CustomPaint(
      size: folderSize,
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(16, 51);
    path_0.cubicTo(16, 39.9543, 24.9543, 31, 36, 31);
    path_0.lineTo(103.669, 31);
    path_0.cubicTo(110.15, 31, 116.228, 34.1401, 119.979, 39.4251);
    path_0.lineTo(130.021, 53.5749);
    path_0.cubicTo(133.772, 58.8599, 139.85, 62, 146.331, 62);
    path_0.lineTo(167, 62);
    path_0.cubicTo(178.046, 62, 187, 70.9543, 187, 82);
    path_0.lineTo(187, 182);
    path_0.cubicTo(187, 193.046, 178.046, 202, 167, 202);
    path_0.lineTo(36, 202);
    path_0.cubicTo(24.9543, 202, 16, 193.046, 16, 182);
    path_0.lineTo(16, 51);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
