import 'package:flutter/material.dart';

import '../utils/custom_color.dart';

class CustomSearchBar extends StatefulWidget {

  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool isReadOnly;
  final String? hinTxt;

  const CustomSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.hinTxt,
    this.isReadOnly = false,

  });
  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}
class _CustomSearchBarState extends State<CustomSearchBar> {

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 45,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: CustomColors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: CustomColors.secondary.withOpacity(1.0),
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: CustomColors.secondary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: widget.controller,
                onChanged: widget.onChanged,
                readOnly: widget.isReadOnly,
                style: const TextStyle(
                  color: CustomColors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hinTxt ?? "Search cafés...",
                  hintStyle: TextStyle(
                    color: CustomColors.secondary
                        .withOpacity(0.6),
                  ),
                  suffixIcon:
                  widget.controller?.text
                      .isNotEmpty ?? false
                      ? GestureDetector(
                    onTap: () {
                      widget.controller?.clear();
                      widget.onChanged?.call("");
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ) : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}