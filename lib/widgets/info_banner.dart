import 'package:flutter/material.dart';

class InfoBanner extends StatelessWidget {
  const InfoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bannerWidth = width - 32;

    return Center(
      child: SizedBox(
        width: bannerWidth,
        height: 162,
        child: Stack(
          children: [
            Positioned(
              right: bannerWidth * 0.1,
              left: bannerWidth * 0.1,
              top: 47,
              child: Container(
                width: bannerWidth * 0.7,
                height: 115,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE7E2FC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            // Background layer 2 (middle)
            Positioned(
              right: bannerWidth * 0.05,
              left: bannerWidth * 0.05,
              top: 11,
              child: Container(
                width: bannerWidth,
                height: 141,
                decoration: ShapeDecoration(
                  color: const Color(0xFFB3A4FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            Container(
              width: bannerWidth,
              height: 141,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, 0.43),
                  end: Alignment(1.00, 0.50),
                  colors: [Color(0xFF6B4EFF), Color(0xFF836CFA)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Icon container
                    Container(
                      width: 68,
                      height: 68,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Image.asset(
                        'lib/assets/images/progressImg.png',
                        height: 32,
                        width: 32,
                      ),
                    ),

                    // Text content
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Available Space',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '20.254 GB of 25 GB Used',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
