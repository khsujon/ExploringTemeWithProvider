import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart'; // Import the theme provider

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dark Mode'),
                Consumer<ThemeProvider>(
                  builder: (context, themeProvider, child) {
                    return Switch(
                      value: themeProvider.isDarkMode,
                      onChanged: (value) {
                        themeProvider.toggleTheme();
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
