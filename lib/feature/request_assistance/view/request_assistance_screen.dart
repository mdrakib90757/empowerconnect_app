import 'package:empowerconnect_app/core/shared_widgets/custom_app_text.dart';
import 'package:empowerconnect_app/core/utils/color.dart';
import 'package:flutter/material.dart';

class RequestAssistanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: CustomAppText(
          text: "Request Assistance",
          color: APPColor.whiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: APPColor.whiteColor),
          onPressed: () {

          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/img/download (7).jpeg',
                  ), // Add your image asset
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Request Assistance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Convento Mients', // Assuming this is a placeholder
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {
                    // Handle more options
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
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
                child: Column(
                  children: [
                    _buildAssistanceOption(
                      icon: Icons.personal_injury,
                      title: 'Terms of Assistance',
                    ),
                    _buildAssistanceOption(
                      icon: Icons.mail_outline,
                      title: 'Trusty Maildrop',
                    ),

                    _buildCategoryHeader('Daily Tasks'),
                    _buildMainOption(
                      icon: Icons.devices_other,
                      title: 'Assistive Tech',
                      subtitle: 'Learn more',
                      trailingIcon:
                          Icons.qr_code,
                    ),
                    _buildMainOption(
                      icon: Icons.devices_other,
                      title: 'Assistive Tech',
                      subtitle: 'Learn more',
                      trailingIcon:
                          Icons.qr_code,
                    ),

                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle find a volunteer
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              APPColor.backgroundColor,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Find a Volunteer',
                          style: TextStyle(
                            fontSize: 18,
                            color: APPColor.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAssistanceOption({
    required IconData icon,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: APPColor.backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Icon(icon, color: APPColor.whiteColor),
          title: Text(
            title,
            style: TextStyle(color: APPColor.whiteColor, fontSize: 18),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: APPColor.whiteColor.withOpacity(0.7),
            size: 16,
          ),
          onTap: () {
            // Handle option tap
          },
        ),
      ),
    );
  }

  Widget _buildCategoryHeader(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
        child: Text(
          title,
          style: TextStyle(
            color: APPColor.greyColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryOption({required IconData icon, required String title}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: APPColor.greyColor.withOpacity(
            0.5,
          ), // Light grey for categories
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: APPColor.backgroundColor,
          ), // Dark blue icon
          title: Text(
            title,
            style: const TextStyle(color: Colors.black87, fontSize: 18),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: APPColor.greyColor,
            size: 16,
          ),
          onTap: () {
            // Handle category tap
          },
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

            },
          ),
        ),
      ),
    );
  }
}
