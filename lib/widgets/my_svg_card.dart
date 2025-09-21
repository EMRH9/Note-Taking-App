import 'package:flutter/material.dart';

/// A widget that paints the SVG path:
/// M16 51C16 39.9543 24.9543 31 36 31H103.669C110.15 31
/// 116.228 34.1401 119.979 39.4251L130.021 53.5749C133.772
/// 58.8599 139.85 62 146.331 62H167C178.046 62 187 70.9543
/// 187 82V182C187 193.046 178.046 202 167 202H36C24.9543
/// 202 16 193.046 16 182V51Z
class SvgPathWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const SvgPathWidget({
    super.key,
    this.width = 222,
    this.height = 241,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: _SvgPathPainter(color),
      ),
    );
  }
}

class _SvgPathPainter extends CustomPainter {
  final Color color;

  const _SvgPathPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final double xScale = size.width / 222;
    final double yScale = size.height / 241;

    final path = Path()
      ..moveTo(16 * xScale, 51 * yScale)
      ..cubicTo(16 * xScale, 39.9543 * yScale, 24.9543 * xScale, 31 * yScale,
          36 * xScale, 31 * yScale)
      ..lineTo(103.669 * xScale, 31 * yScale)
      ..cubicTo(110.15 * xScale, 31 * yScale, 116.228 * xScale,
          34.1401 * yScale, 119.979 * xScale, 39.4251 * yScale)
      ..lineTo(130.021 * xScale, 53.5749 * yScale)
      ..cubicTo(133.772 * xScale, 58.8599 * yScale, 139.85 * xScale,
          62 * yScale, 146.331 * xScale, 62 * yScale)
      ..lineTo(167 * xScale, 62 * yScale)
      ..cubicTo(178.046 * xScale, 62 * yScale, 187 * xScale, 70.9543 * yScale,
          187 * xScale, 82 * yScale)
      ..lineTo(187 * xScale, 182 * yScale)
      ..cubicTo(187 * xScale, 193.046 * yScale, 178.046 * xScale, 202 * yScale,
          167 * xScale, 202 * yScale)
      ..lineTo(36 * xScale, 202 * yScale)
      ..cubicTo(24.9543 * xScale, 202 * yScale, 16 * xScale, 193.046 * yScale,
          16 * xScale, 182 * yScale)
      ..lineTo(16 * xScale, 51 * yScale);

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
