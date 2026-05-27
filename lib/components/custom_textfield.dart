import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/custom_color.dart';

class CustomTextFieldComponent extends StatefulWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isPassword;
  final TextEditingController? textController;
  final double width;
  final double height;
  final TextInputType keyboardType;
  final int? textLength;
  final bool readText;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFieldComponent({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.textController,
    this.width = double.infinity,
    this.inputFormatters,
    this.height = 50,
    this.onChanged,
    this.textLength,
    this.readText = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<CustomTextFieldComponent> createState() =>
      _CustomTextFieldComponentState();
}

class _CustomTextFieldComponentState extends State<CustomTextFieldComponent> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        cursorColor: CustomColors.midBlack,
        obscureText: widget.isPassword && !_isPasswordVisible,
        controller: widget.textController,
        readOnly: widget.readText,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        maxLength: widget.textLength,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(bottom: 2, left: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFF3F3F3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFF3F3F3)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFF3F3F3)),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xFFA7A9B7),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? GestureDetector(
            onTap: _togglePasswordVisibility,
            child: _isPasswordVisible
                ? const Icon(Icons.visibility, color: Color(0xFFA7A9B7))
                : const Icon(Icons.visibility_off,
                color: Color(0xFFA7A9B7)),
          )
              : widget.suffixIcon,
        ),
      ),
    );
  }
}