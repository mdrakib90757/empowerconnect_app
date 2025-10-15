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
  List<Map<String, dynamic>> mainOptionsData = [
    {
      'icon': Icons.gavel,
      'title': 'Acessible Travel Tips',
      "image": "assets/img/man2.jpg",
      'subtitle': 'Share your experience abd advice',
      'trailingIcon': Icons.balance,
      'iconColor': Color(0xFF232D50),
      'ticketCount': 72,
      'commentsCount': 19,
    },
    {
      'icon': Icons.people_alt,
      'title': 'Tech For Low Vision',
      "image": "assets/img/man3.jpg",
      'subtitle': 'Nittiwur cluthes\nExplore the latest apps and devices',
      'trailingIcon': Icons.group,
      'iconColor': Colors.green,
      'ticketCount': 105,
      'commentsCount': 25,
    },
    {
      'icon': Icons.location_on,
      'title': 'Legal Rights & Advocacy',
      "image": "assets/img/man3.jpg",
      'subtitle': 'Emparn the lustend\nUnderstand your Protections',
      'trailingIcon': Icons.star_border,
      'iconColor': Color(0xFF232D50),
      'ticketCount': 88,
      'commentsCount': 12,
    },
    {
      'icon': Icons.devices_other,
      'title': 'Job & Skill Dev',
      "image": "assets/img/man1.jpg",
      'subtitle': 'Nittiwur cluthes\nExplore the latest apps and devices',
      'trailingIcon': Icons.qr_code,
      'iconColor': Color(0xFF232D50),
      'ticketCount': 60,
      'commentsCount': 8,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        excludeHeaderSemantics: true,
        automaticallyImplyLeading: false,
        title: CustomAppLargeText(
          text: "Community Forums",
          color: APPColor.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.message, color: APPColor.whiteColor, weight: 5),
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
                      children: [
                        _buildHorizontalCard(
                          context,
                          'assets/img/2.png',
                          'Disability Awareness',
                          'Join the discussion',
                        ),
                        _buildHorizontalCard(
                          context,
                          'assets/img/3.png',
                          'Accessible Homes',
                          'Tips & designs',
                        ),
                        _buildHorizontalCard(
                          context,
                          'assets/img/download (7).jpeg',
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

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  itemCount: mainOptionsData.length,
                  itemBuilder: (context, index) {
                    final option = mainOptionsData[index];
                    return _buildMainOption(
                      icon: option['icon'],
                      title: option['title'],
                      Imagee: option["image"],
                      subtitle: option['subtitle'],
                      trailingIcon: option['trailingIcon'],
                      iconColor: option['iconColor'],
                      ticketCount: option['ticketCount'],
                      commentsCount: option['commentsCount'],
                    );
                  },
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 180,
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
          // Gradient Overlay for better text readability
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
              ),
            ),
          ),
          // Text Overlay
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomAppLargeText(
                  text: title,
                  color: APPColor.whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 4),
                CustomAppText(
                  text: subtitle,
                  color: APPColor.whiteColor,
                  fontSize: 14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build the vertical cards (unchanged from your code)
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
    required int ticketCount,
    required int commentsCount,
    required String Imagee,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: iconColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset("$Imagee"),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // huis text
                          Row(
                            children: [
                              Image.asset(
                                "assets/img/ticket.png",
                                height: 30,
                                width: 50,
                                color: APPColor.backgroundColor,
                              ),
                              Text(
                                "Heuis",
                                style: TextStyle(
                                  color: APPColor.backgroundColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Image.asset(
                                "assets/img/button.png",
                                height: 20,
                                width: 20,
                                color: APPColor.backgroundColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "$ticketCount",
                                style: TextStyle(
                                  color: APPColor.backgroundColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: 20),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.logout,
                                color: APPColor.backgroundColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "$commentsCount",
                                style: TextStyle(
                                  color: APPColor.backgroundColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            "assets/img/target.png",
                            color: APPColor.backgroundColor,
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
