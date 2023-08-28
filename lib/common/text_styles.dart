import 'package:flutter/material.dart';

class AppTexts {
  static Text prodBigName(String text) {
    return Text(text,
        style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            decoration: TextDecoration.none));
  }

  static Text prodSmallName(String text) {
    return Text(text,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            decoration: TextDecoration.none));
  }

  static Text prodBold(String text) {
    return Text(text,
        style: const TextStyle(
            decoration: TextDecoration.none,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black));
  }

  static Text opacityText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 14,
          color: Color(0xFFA1A1A1),
          decoration: TextDecoration.none),
    );
  }

  static Text descriptionText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 20, decoration: TextDecoration.none, color: Colors.black),
    );
  }
}
