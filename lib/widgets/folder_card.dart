import 'package:flutter/material.dart';
import 'package:keep_note/widgets/folder_card_foreground.dart';

class FolderCard extends StatelessWidget {
  FolderCard({
    super.key,
    required this.kCategory,
    required this.kFileSize,
    required this.kFilesNum,
    required this.kIcon,
  });
  IconData kIcon;
  String kCategory;
  int kFilesNum;
  int kFileSize;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 80,
          top: 44,
          child: _buildBackCard(),
        ),
        const FolderCardForeground(),
        Positioned(
          top: 50,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  color: const Color(0xff6B4EFF).withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  size: 33,
                  kIcon,
                  color: const Color(0xff6B4EFF).withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                kCategory,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                '$kFileSize Files',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Size: $kFileSize MBs',
                style: const TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildBackCard() {
  return Stack(
    children: [
      Transform.rotate(
        angle: 6.12,
        alignment: Alignment.bottomLeft,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff6B4EFF).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 100,
          width: 100,
        ),
      ),
      Container(
        decoration: BoxDecoration(
            color: const Color(0xff6B4EFF).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        height: 100,
        width: 100,
      ),
    ],
  );
}
