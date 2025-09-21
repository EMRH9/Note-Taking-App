import 'package:flutter/material.dart';
import 'package:keep_note/widgets/my_svg_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenPadding = MediaQuery.of(context).padding;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Container(
            color: Colors.grey[100],
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
              _buildBanner(context, screenPadding),
              const SizedBox(height: 24),
              // Use a fixed height for the GridView
              SizedBox(
                height: 400, // Adjust as needed for your design
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  children: [
                    _buildCategoryCard(
                        catIcon: Icons.description_outlined,
                        category: "Personal",
                        fileNum: 30,
                        fileSize: "50 MB"),
                    _buildCategoryCard(
                      catIcon: Icons.school_outlined,
                      category: "Academic",
                      fileNum: 102,
                      fileSize: "2.26 GB",
                    ),
                    _buildCategoryCard(
                      catIcon: Icons.work_outline,
                      category: "Work",
                      fileNum: 300,
                      fileSize: "1.57 GB",
                    ),
                    _buildCategoryCard(
                      catIcon: Icons.folder_outlined,
                      category: "Others",
                      fileNum: 201,
                      fileSize: "1.02 GB",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBanner(BuildContext context, EdgeInsets screenPadding) {
    final width = MediaQuery.of(context).size.width;
    final bannerWidth = width - 32; // Account for horizontal padding

    return Center(
      child: SizedBox(
        width: bannerWidth,
        height: 162,
        child: Stack(
          children: [
            // Background layer 1 (farthest back)
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

  Widget _buildCategoryCard(
      {required IconData catIcon,
      required String category,
      required int fileNum,
      required String fileSize}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth = constraints.maxWidth;
        final cardHeight = constraints.maxHeight;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: cardWidth * 0.18,
              top: cardHeight * 0.11,
              child: Image.asset(
                'lib/assets/images/categCardBack.png',
                width: cardWidth * 0.6,
                height: cardHeight * 0.6,
                fit: BoxFit.contain,
              ),
            ),

            SvgPathWidget(
              width: cardWidth,
              height: cardHeight,
              color: Colors.white,
            ),
            // Content positioned on the card
            Positioned(
              left: cardWidth * 0.18, // Adjust based on your design
              top: cardHeight * 0.18, // Adjust based on your design
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon container
                  Container(
                    width: cardWidth * 0.24, // Responsive icon size
                    height: cardWidth * 0.24,
                    decoration: BoxDecoration(
                      color: const Color(0x196B4EFF),
                      borderRadius: BorderRadius.circular(cardWidth * 0.12),
                    ),
                    child: Icon(
                      catIcon,
                      color: const Color(0xFF6B4EFF),
                      size: cardWidth * 0.12,
                    ),
                  ),

                  SizedBox(height: cardHeight * 0.05),

                  // Category name
                  Text(
                    category,
                    style: TextStyle(
                      color: const Color(0xFF2A2251),
                      fontSize: cardWidth * 0.07, // Responsive font size
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(height: cardHeight * 0.03),

                  // File count
                  Text(
                    '$fileNum ${fileNum == 1 ? "file" : "files"}',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.60),
                      fontSize: cardWidth * 0.06,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: cardHeight * 0.02),

                  Text(
                    'Size: $fileSize',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.40),
                      fontSize: cardWidth * 0.045,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
