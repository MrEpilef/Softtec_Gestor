import 'package:flutter/material.dart';

class CampoTextoPadrao extends StatelessWidget {
  final String label;
  final String hint;

  const CampoTextoPadrao({
    super.key, 
    required this.label, 
    required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white60),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white30),
        filled: true,
        fillColor: const Color(0xFF001B29),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFFF4103), width: 2),
        ),
      ),
    );
  }
}
