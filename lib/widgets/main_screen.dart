import 'package:flutter/material.dart';
import 'package:keep_note/widgets/folder_card.dart';
import 'package:keep_note/widgets/info_banner.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  //TODO: Work on creating a column
  @override
  Widget build(BuildContext context) {
    final screenPadding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF9F8FD), // Light purple
              Color(0xFFF0EDFF), // Slightly darker light purple
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        tooltip: "Documents",
                        icon: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.folder_outlined,
                              color: Colors.deepPurple,
                              size: 24,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 2),
                              height: 2,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(1),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: "List",
                        icon: Icon(
                          Icons.view_list_outlined,
                          color: Colors.grey[600],
                          size: 24,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 48), // space for FAB
                      IconButton(
                        tooltip: "History",
                        icon: Icon(
                          Icons.access_time_outlined,
                          color: Colors.grey[600],
                          size: 24,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: "Settings",
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Colors.grey[600],
                          size: 24,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          floatingActionButton: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF6B4EFF), Color(0xFF836CFA)],
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome, John!",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                          ),
                          Text(
                            "Note-Taking App",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.notifications_active_outlined),
                      const SizedBox(width: 16),
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.grey[300],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image.network(
                            'https://placehold.co/52x52.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.person,
                                  size: 32, color: Colors.grey[600]);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 32),
                  const InfoBanner(),
                  const SizedBox(height: 24),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    // childAspectRatio: 1.1,
                    children: [
                      FolderCard(
                        kCategory: 'Personal',
                        kFileSize: 20,
                        kFilesNum: 10,
                        kIcon: Icons.person_2_outlined,
                      ),
                      FolderCard(
                        kCategory: 'Work',
                        kFileSize: 20,
                        kFilesNum: 10,
                        kIcon: Icons.workspace_premium_rounded,
                      ),
                      FolderCard(
                        kCategory: 'Personal',
                        kFileSize: 20,
                        kFilesNum: 10,
                        kIcon: Icons.access_alarm_rounded,
                      ),
                      FolderCard(
                        kCategory: 'Personal',
                        kFileSize: 20,
                        kFilesNum: 10,
                        kIcon: Icons.access_alarm_rounded,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
