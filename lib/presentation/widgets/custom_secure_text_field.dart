import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSecureTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  const CustomSecureTextField({
    super.key,
    required this.labelText,
    required this.controller,
  });

  @override
  State<CustomSecureTextField> createState() => _CustomSecureTextFieldState();
}

class _CustomSecureTextFieldState extends State<CustomSecureTextField> {
  var _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isObscure,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade800,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: IconButton(
            splashRadius: 1,
            icon: FaIcon(
              color: Colors.black,
              size: 18,
              (_isObscure == true)
                  ? FontAwesomeIcons.eye
                  : FontAwesomeIcons.eyeSlash,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
