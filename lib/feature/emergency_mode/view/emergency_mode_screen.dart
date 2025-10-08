import 'package:empowerconnect_app/core/shared_widgets/custom_app_text.dart';
import 'package:empowerconnect_app/core/utils/color.dart';
import 'package:flutter/material.dart';

class EmergencyHelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: CustomAppText(
          text: "Emergency Mode",
          color: APPColor.whiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: APPColor.whiteColor),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: APPColor.greyColor.withOpacity(
                0.3,
              ),
              child: Icon(Icons.person, color: APPColor.whiteColor, size: 24),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Emergency Help Mode',
              style: TextStyle(
                color: APPColor.whiteColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),
          // Emergency Button
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.6),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'EMERGENCY',
                style: TextStyle(
                  color: APPColor.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          // Call Trusted Contact Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                Text(
                  'Call Trusted Contact',
                  style: TextStyle(color: APPColor.whiteColor, fontSize: 18),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {

                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: APPColor.greyColor.withOpacity(0.5),
                      side: BorderSide(color: APPColor.greyColor, width: 1),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Dial Trusted Contact',
                      style: TextStyle(
                        color: APPColor.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // SOS Services Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: APPColor.greyColor.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      side: BorderSide(color: APPColor.greyColor, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'SOS Services',
                      style: TextStyle(
                        color: APPColor.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom Navigation Bar look-alike
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            decoration: BoxDecoration(
              color: APPColor.whiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildBottomNavItem(
                  Icons.favorite_border,
                  'Distaes',
                  APPColor.greyColor,
                ),
                _buildBottomNavItem(
                  Icons.location_on_outlined,
                  'Seconost',
                  APPColor.greyColor,
                ),
                _buildBottomNavItem(
                  Icons.star_border,
                  'Notres',
                  APPColor.greyColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, String label, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: color, fontSize: 12)),
      ],
    );
  }
}
