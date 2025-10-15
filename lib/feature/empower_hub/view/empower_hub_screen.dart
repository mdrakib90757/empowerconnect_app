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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios, color: APPColor.whiteColor),
        //   onPressed: () {
        //     // Handle back button press
        //   },
        // ),
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
                  icon: Icons.gavel,
                  title: 'Legal Rights',
                  subtitle: 'Get more',
                ),
                _buildTopMenuItem(
                  icon:
                      Icons.diversity_3,
                  title: 'Assistance\nNetworks',
                  subtitle: 'Gnesks',
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
                            Icons.balance,
                      ),
                      _buildMainOption(
                        icon: Icons
                            .people_alt,
                        title: 'Support Groups',
                        subtitle: 'Select',
                        trailingIcon: Icons.group,
                        iconColor:
                            Colors.green,
                      ),
                      _buildMainOption(
                        icon: Icons.location_on,
                        title: 'Assistive Tech',
                        subtitle: 'New Registration',
                        trailingIcon:
                            Icons.star_border,
                      ),
                      _buildMainOption(
                        icon: Icons.devices_other,
                        title: 'Assistive Tech',
                        subtitle: 'Learn more',
                        trailingIcon:
                            Icons.qr_code,
                      ),

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
                APPColor.backgroundColor,
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
