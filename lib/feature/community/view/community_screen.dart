import 'package:empowerconnect_app/core/shared_widgets/custom_app_large_text.dart';
import 'package:empowerconnect_app/core/shared_widgets/custom_app_text.dart';
import 'package:empowerconnect_app/core/utils/color.dart';
import 'package:flutter/material.dart';

class communityScreen extends StatefulWidget {
  const communityScreen({super.key});

  @override
  State<communityScreen> createState() => _communityScreenState();
}

class _communityScreenState extends State<communityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: APPColor.whiteColor),
          onPressed: () {

          },
        ),
        title: CustomAppLargeText(
          text: "Community Forums",
          color: APPColor.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          // IconButton(
          //   icon: Icon(Icons.search, color: APPColor.whiteColor), // Search icon
          //   onPressed: () {
          //     // Handle search
          //   },
          // ),
          IconButton(
            icon: Icon(
              Icons.message,
              color: APPColor.whiteColor,
              weight: 5,
            ), // Chat icon
            onPressed: () {
              // Handle chat
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppText(
                    text: "Connect & Share",
                    color: APPColor.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      //  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      children: [
                        _buildHorizontalCard(
                          context,
                          'assets/img/download (7).jpeg',
                          'Disability Awareness',
                          'Join the discussion',
                        ),
                        _buildHorizontalCard(
                          context,
                          'assets/group_photo2.jpg',
                          'Accessible Homes',
                          'Tips & designs',
                        ),
                        _buildHorizontalCard(
                          context,
                          'assets/group_photo3.jpg',
                          'Tech Innovations',
                          'Latest gadgets',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            //White container starting from here, extending to the bottom
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: Column(
                        children: [
                          _buildMainOption(
                            icon: Icons.gavel,
                            title: 'Legal Rights',
                            subtitle: 'Details',
                            trailingIcon: Icons.balance,
                          ),
                          _buildMainOption(
                            icon: Icons.people_alt,
                            title: 'Support Groups',
                            subtitle: 'Select',
                            trailingIcon: Icons.group,
                            iconColor: Colors.green,
                          ),
                          _buildMainOption(
                            icon: Icons.location_on,
                            title: 'Assistive Tech',
                            subtitle: 'New Registration',
                            trailingIcon: Icons.star_border,
                          ),

                          _buildMainOption(
                            icon: Icons.devices_other,
                            title: 'Assistive Tech',
                            subtitle: 'Learn more',
                            trailingIcon: Icons.qr_code,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build the horizontal cards
  Widget _buildHorizontalCard(
    BuildContext context,
    String imagePath,
    String title,
    String subtitle,
  ) {
    return Container(
      width: 300,

      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(boxShadow: []),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(10),
              bottom: Radius.circular(10),
            ),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.cover,

              errorBuilder: (context, error, stackTrace) => Container(
                height: 100,
                width: double.infinity,
                color: APPColor.greyColor.withOpacity(0.5),
                child: Center(
                  child: CustomAppText(
                    text: "Img Missing",
                    color: APPColor.greyColor,
                  ),
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       CustomAppText(text: title,color: APPColor.whiteColor,),
          //       const SizedBox(height: 4),
          //       CustomAppText(text: title,color: APPColor.whiteColor,),
          //
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  // Helper method to build the vertical cards
  Widget _buildVerticalCard(
    BuildContext context,
    String profilePicPath,
    String title,
    String username,
    String timeAgo,
    String replies,
  ) {
    return Card(
      color: APPColor.greyColor.withOpacity(0.1),
      elevation: 10,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(profilePicPath),

              onBackgroundImageError: (exception, stackTrace) => Container(
                color: APPColor.greyColor.withOpacity(0.5),
                alignment: Alignment.center,
                child: Icon(Icons.person, color: APPColor.greyColor),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppText(
                    text: title,
                    color: APPColor.backgroundColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),

                  const SizedBox(height: 4),
                  CustomAppText(
                    text: "$username • $timeAgo",
                    fontSize: 13,
                    color: APPColor.greyColor.withOpacity(0.8),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.message,
                  size: 16,
                  color: APPColor.greyColor.withOpacity(0.8),
                ),
                const SizedBox(width: 4),
                CustomAppText(
                  text: replies,
                  fontSize: 13,
                  color: APPColor.greyColor.withOpacity(0.8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required IconData trailingIcon,
    Color iconColor = const Color(0xFF232D50),
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            color: APPColor.greyColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(
                  0.1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: iconColor, size: 28),
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: const TextStyle(color: Colors.black87, fontSize: 14),
            ),
            trailing: Icon(trailingIcon, color: Colors.black87, size: 24),
            onTap: () {
              // Handle option tap
            },
          ),
        ),
      ),
    );
  }
}
