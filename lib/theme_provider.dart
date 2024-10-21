import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  // Light Mode Custom Colors
  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      extensions: [
        // Add light custom colors
        CustomColors.light(),
      ],
    );
  }

  // Dark Mode Custom Colors
  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      extensions: [
        // Add dark custom colors
        CustomColors.dark(),
      ],
    );
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

// Define a class to hold 10 different custom colors
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  final Color scaffoldColor;
  final Color primaryContainerColor;
  final Color homeSecondaryContColor;
  final Color customBlackContColor;
  final Color primaryBlackTextColor;
  final Color secondaryBlackTextColor;
  final Color checkInContColor;
  final Color checkOutContColor;
  final Color faButtonColor;
  final Color fabIconColor;
  final Color primaryIconColor;

  const CustomColors({
    required this.scaffoldColor,
    required this.primaryContainerColor,
    required this.homeSecondaryContColor,
    required this.customBlackContColor,
    required this.primaryBlackTextColor,
    required this.secondaryBlackTextColor,
    required this.checkInContColor,
    required this.checkOutContColor,
    required this.faButtonColor,
    required this.fabIconColor,
    required this.primaryIconColor,
  });

  // Light mode custom colors
  factory CustomColors.light() {
    return const CustomColors(
        scaffoldColor: Color(0xFFF1F3F4),
        primaryContainerColor: Color(0xFFFFFFFF),
        homeSecondaryContColor: Color(0xFFF4F4F4),
        customBlackContColor: Color(0xFF101010),
        primaryBlackTextColor: Color(0xFF101010),
        secondaryBlackTextColor: Color(0xFFA5A5A9),
        checkInContColor: Color(0xFFEBF9EE),
        checkOutContColor: Color(0xFFFFEBEA),
        faButtonColor: Color(0xFF101010),
        fabIconColor: Color(0xFFFFFFFF),
        primaryIconColor: Color(0xFF000000));
  }

  // Dark mode custom colors
  factory CustomColors.dark() {
    return const CustomColors(
        scaffoldColor: Color(0xFF000000),
        primaryContainerColor: Color(0xFF202124),
        homeSecondaryContColor: Color(0xFF282A2D),
        customBlackContColor: Color(0xFF3C4043),
        primaryBlackTextColor: Color(0xFFFFFFFF),
        secondaryBlackTextColor: Color(0xFF9AA0A6),
        checkInContColor: Color(0xFF282A2D),
        checkOutContColor: Color(0xFF282A2D),
        faButtonColor: Color(0xFFFFFFFF),
        fabIconColor: Color(0xFF101010),
        primaryIconColor: Color(0xFFFFFFFF));
  }

  @override
  CustomColors copyWith({
    Color? scaffoldColor,
    Color? primaryContainerColor,
    Color? homeSecondaryContColor,
    Color? customBlackContColor,
    Color? primaryBlackTextColor,
    Color? secondaryBlackTextColor,
    Color? checkInContColor,
    Color? checkOutContColor,
    Color? faButtonColor,
    Color? fabIconColor,
    Color? primaryIconColor,
  }) {
    return CustomColors(
        scaffoldColor: scaffoldColor ?? this.scaffoldColor,
        primaryContainerColor:
            primaryContainerColor ?? this.primaryContainerColor,
        homeSecondaryContColor:
            homeSecondaryContColor ?? this.homeSecondaryContColor,
        customBlackContColor: customBlackContColor ?? this.customBlackContColor,
        primaryBlackTextColor:
            primaryBlackTextColor ?? this.primaryBlackTextColor,
        secondaryBlackTextColor:
            secondaryBlackTextColor ?? this.secondaryBlackTextColor,
        checkInContColor: checkInContColor ?? this.checkInContColor,
        checkOutContColor: checkOutContColor ?? this.checkOutContColor,
        faButtonColor: faButtonColor ?? this.faButtonColor,
        fabIconColor: fabIconColor ?? this.fabIconColor,
        primaryIconColor: primaryIconColor ?? this.primaryIconColor);
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      scaffoldColor: Color.lerp(scaffoldColor, other.scaffoldColor, t)!,
      primaryContainerColor:
          Color.lerp(primaryContainerColor, other.primaryContainerColor, t)!,
      homeSecondaryContColor:
          Color.lerp(homeSecondaryContColor, other.homeSecondaryContColor, t)!,
      customBlackContColor:
          Color.lerp(customBlackContColor, other.customBlackContColor, t)!,
      primaryBlackTextColor:
          Color.lerp(primaryBlackTextColor, other.primaryBlackTextColor, t)!,
      secondaryBlackTextColor: Color.lerp(
          secondaryBlackTextColor, other.secondaryBlackTextColor, t)!,
      checkInContColor:
          Color.lerp(checkInContColor, other.checkInContColor, t)!,
      checkOutContColor:
          Color.lerp(checkOutContColor, other.checkOutContColor, t)!,
      faButtonColor: Color.lerp(faButtonColor, other.faButtonColor, t)!,
      fabIconColor: Color.lerp(fabIconColor, other.fabIconColor, t)!,
      primaryIconColor:
          Color.lerp(primaryIconColor, other.primaryIconColor, t)!,
    );
  }
}
