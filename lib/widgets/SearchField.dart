import 'package:flutter/material.dart';
import 'package:naenia/assets/const.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 10,
        shadowColor: Colors.black.withValues(alpha: .30),
        borderRadius: BorderRadius.circular(12),
        child: TextField(
          cursorColor: Color.fromRGBO(18, 18, 18, 0.1),
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TEXT_PLACEHOLDER,
            prefixIcon: const Icon(Icons.search),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
        ),
      ),
    );
  }
}
