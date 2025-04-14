import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode()); // Hides the on-screen keyboard.
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle( // Sets the color of the device's status bar.
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0; // Checks if the device is in landscape orientation.
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0; // Checks if the device is in portrait orientation.
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode( // Sets the app to full-screen or edge-to-edge mode.
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height; // Returns the height of the device's screen.
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width; // Returns the width of the device's screen.
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio; // Returns the device's pixel ratio.
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top; // Returns the height of the device's status bar.
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight; // Returns the standard height of the bottom navigation bar.
  }

  static double getAppBarHeight() {
    return kToolbarHeight; // Returns the standard height of the app bar (toolbar).
  }

  static double getKeyboardHeight() {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom; // Returns the current height of the visible keyboard.
  }

  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0; // Checks if the keyboard is currently visible.
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android || // Checks if the app is running on a physical Android or iOS device.
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration) async {
    HapticFeedback.vibrate(); // Triggers device vibration.
    Future.delayed(duration, () => HapticFeedback.vibrate()); // Triggers device vibration after a delay.
  }

  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations,
      ) async {
    await SystemChrome.setPreferredOrientations(orientations); // Sets the preferred screen orientations for the app.
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []); // Hides the device's status bar.
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode( // Shows the device's status bar.
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty; // Checks if the device has an active internet connection.
    } on SocketException catch (_) {
      return false;
    }
  }

  static bool isIOS() {
    return Platform.isIOS; // Checks if the current operating system is iOS.
  }

  static bool isAndroid() {
    return Platform.isAndroid; // Checks if the current operating system is Android.
  }

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url); // Launches the given URL in the device's default browser.
    } else {
      throw 'Could not launch $url';
    }
  }
}