import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.isPassword = false,
    this.passwordIcon,
    required this.prefixIcon,
    this.controller,
  });

  final bool isPassword;
  final String labelText;
  final IconData? passwordIcon;
  final IconData prefixIcon;
  final TextEditingController?  controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHiden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.isPassword? TextInputType.text: TextInputType.number,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required!";
        } else {
          return null;
        }
      },
     controller: widget.controller,
      obscureText: isHiden && widget.isPassword,
      cursorHeight: 15,
      style: const TextStyle(
        fontSize: 15,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.prefixIcon,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  isHiden ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  isHiden = !isHiden;
                  setState(() {});
                },
              )
            : null,
        fillColor: const Color.fromARGB(255, 240, 241, 243),
        filled: true,
        labelText: widget.labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
