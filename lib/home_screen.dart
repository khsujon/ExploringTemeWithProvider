import 'package:flutter/material.dart';
import 'package:theme_with_provider/setting_page.dart';
import 'theme_provider.dart'; // Import your ThemeProvider and CustomColors

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Get custom colors from the current theme
    final customColors = Theme.of(context).extension<CustomColors>();

    return Scaffold(
      backgroundColor: customColors?.scaffoldColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home Page',
          style: TextStyle(
            color: customColors
                ?.customBlackContColor, // Custom color for the AppBar text
          ),
        ),
        backgroundColor:
            customColors?.scaffoldColor, // Custom AppBar background color
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: customColors
                        ?.customBlackContColor, // Custom container color

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: customColors
                        ?.primaryContainerColor, // Custom container color
                    border: Border.all(
                      color: customColors?.secondaryBlackTextColor ??
                          Colors.grey, // Custom border color
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: customColors
                            ?.homeSecondaryContColor, // Custom container color
                        border: Border.all(
                          color: customColors?.homeSecondaryContColor ??
                              Colors.grey, // Custom border color
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'This is Title',
              style: TextStyle(
                color: customColors?.primaryBlackTextColor, // Custom text color
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This is home page content. Here’s more content for the home page.',
              style: TextStyle(
                color:
                    customColors?.secondaryBlackTextColor, // Custom text color
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: customColors?.primaryIconColor,
                  ),
                  Text('Settings'),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: customColors?.faButtonColor,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.qr_code_scanner,
          color: customColors!.fabIconColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Custom scaffold background color
    );
  }
}
