import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';

BoxDecoration authTextStyles = BoxDecoration(
  color: const Color.fromARGB(162, 168, 215, 168).withOpacity(0.5),
  borderRadius: BorderRadius.circular(15),
);
InputDecoration textFormFieldRegistrationDecoration(icon, hint) {
  return InputDecoration(
      counterText: '',
      border: InputBorder.none,
      contentPadding: const EdgeInsets.only(left: 30, top: 12),
      prefixIcon: Icon(
        icon,
        color: const Color.fromARGB(255, 141, 161, 143),
      ),
      hintText: hint,
      hintStyle: const TextStyle(
          color: Color.fromARGB(255, 141, 161, 143),
          fontSize: 16,
          fontWeight: FontWeight.w500));
}

InputDecoration searchDecoration() {
  return const InputDecoration(
      counterText: '',
      border: InputBorder.none,
      contentPadding: EdgeInsets.only(left: 30, top: 12),
      prefixIcon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      hintText: search,
      hintStyle: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500));
}
