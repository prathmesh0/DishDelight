import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    this.topMargin,
    this.suffixIcon,
    this.labelText,
    this.hintText,
    this.controller,
    this.validator,
    this.obscureText = false,
    super.key,
  });

  final double? topMargin;
  final bool obscureText;
  final String? labelText;
  final String? Function(String?)? validator;
  final String? hintText;
  final IconButton? suffixIcon;
  final TextEditingController? controller;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.topMargin ?? 0, left: 20, right: 20),
      child: TextFormField(
          validator: widget.validator,
          obscureText: widget.obscureText,
          controller: widget.controller,
          decoration: InputDecoration(
            suffixIcon: widget.suffixIcon,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            errorStyle: const TextStyle(color: Colors.yellow),
            labelText: widget.labelText,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          style: const TextStyle(
            color: Colors.white,
          )),
    );
  }
}
