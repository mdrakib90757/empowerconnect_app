import 'package:empowerconnect_app/core/utils/color.dart';
import 'package:flutter/material.dart';

class EmpowermentHubScreen extends StatefulWidget {
  @override
  State<EmpowermentHubScreen> createState() => _EmpowermentHubScreenState();
}

class _EmpowermentHubScreenState extends State<EmpowermentHubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: APPColor.whiteColor),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text(
          'Empowerment Hub',
          style: TextStyle(
            color: APPColor.whiteColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTopMenuItem(
                  icon: Icons.gavel, // Placeholder for Legal Rights
                  title: 'Legal Rights',
                  subtitle: 'Get more',
                ),
                _buildTopMenuItem(
                  icon:
                      Icons.diversity_3, // Placeholder for Assistance Networks
                  title: 'Assistance\nNetworks',
                  subtitle: 'Gnesks', // Assuming this is placeholder text
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: APPColor.whiteColor.withOpacity(0.7),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildMainOption(
                        icon: Icons.gavel,
                        title: 'Legal Rights',
                        subtitle: 'Details',
                        trailingIcon:
                            Icons.balance, // Placeholder for scale icon
                      ),
                      _buildMainOption(
                        icon: Icons
                            .people_alt, // Changed to a more suitable icon for support groups
                        title: 'Support Groups',
                        subtitle: 'Select',
                        trailingIcon: Icons.group, // Placeholder for group icon
                        iconColor:
                            Colors.green, // Example of changing icon color
                      ),
                      _buildMainOption(
                        icon: Icons.location_on, // For location/registration
                        title: 'Assistive Tech',
                        subtitle: 'New Registration',
                        trailingIcon:
                            Icons.star_border, // Placeholder for star icon
                      ),
                      _buildMainOption(
                        icon: Icons.devices_other, // For assistive tech
                        title: 'Assistive Tech',
                        subtitle: 'Learn more',
                        trailingIcon:
                            Icons.qr_code, // Placeholder for QR code icon
                      ),
                      // Add more options as needed based on the design
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Expanded(
      child: Card(
        elevation: 50,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color:
                APPColor.backgroundColor, // Slightly lighter blue for options
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Icon(icon, color: APPColor.whiteColor, size: 30),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: APPColor.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: APPColor.whiteColor, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required IconData trailingIcon,
    Color iconColor = const Color(0xFF232D50), // Default icon color
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            color: APPColor.greyColor.withOpacity(0.5), // Light grey background
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(
                  0.1,
                ), // Light tint of the icon color
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
