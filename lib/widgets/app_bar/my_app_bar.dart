import 'package:flutter/material.dart';
import 'package:keep_note/styles/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false, // remove default back handling
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            label: const Text(
              'Back',
              style: TextStyle(color: AppColors.appBarLightPurple),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.appBarLightPurple,
            ),
          ),
          Text(title, style: const TextStyle(color: Colors.black)),
          TextButton.icon(
            label: const Text(
              "Search",
              style: TextStyle(color: AppColors.appBarLightPurple),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColors.appBarLightPurple,
            ),
          ),
        ],
      ),
    );
  }

  // AppBar requires a size
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
