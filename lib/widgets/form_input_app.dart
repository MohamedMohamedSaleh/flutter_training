import 'package:flutter/material.dart';
import 'package:flutter_training/login/controller.dart';

import 'custom_text_field.dart';

class FormInputApp extends StatefulWidget {
  const FormInputApp({super.key});

  @override
  State<FormInputApp> createState() => _FormInputAppState();
}

class _FormInputAppState extends State<FormInputApp> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Phone",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            labelText: "Enter your phone",
            prefixIcon: Icons.phone_enabled,
            controller: phoneController,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Password",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            labelText: "Enter your Password",
            prefixIcon: Icons.lock,
            isPassword: true,
            controller: passwordController,
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Forget Password?",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () async {
                FocusScope.of(context).unfocus();
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                LoginController controller = LoginController();
                var message = await controller.loginUser(
                    password: passwordController.text,
                    phone: phoneController.text);
                if (formKey.currentState!.validate()) {
                  if (!context.mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      margin: const EdgeInsets.all(20),
                      backgroundColor: Colors.blue,
                      behavior: SnackBarBehavior.floating,
                      content: Column(
                        children: [
                          Text(message),
                        ],
                      ),
                    ),
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
