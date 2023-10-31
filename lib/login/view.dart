import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border: Border.all(
                      color: Colors.grey.shade200, // Outline color
                      width: 2.0, // Outline width
                    ),
                  ),
                  child: const Icon(Icons.arrow_back_ios_new),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Image.asset(
              "assets/images/login_image.png",
              height: 110,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Login to contain using the app",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              "Phone",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              cursorHeight: 15,
              style: const TextStyle(fontSize: 15),
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.phone_enabled),
                fillColor: const Color.fromARGB(255, 240, 241, 243),
                filled: true,
                hintText: "Enter your phone",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
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
            TextField(
              cursorHeight: 15,
              style: const TextStyle(fontSize: 15),
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 240, 241, 243),
                filled: true,
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility,
                  ),
                  onPressed: () {},
                ),
                hintText: "Enter your Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Forget Password?",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color.fromARGB(255, 202, 201, 201),
                    thickness: 1,
                    // Customize the divider thickness
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or Login With",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.end,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color.fromARGB(255, 202, 201, 201),
                    thickness: 1,
                    // Customize the divider thickness
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey.shade200, // Outline color
                      width: 2.0, // Outline width
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Image.asset(
                      "assets/images/facebook_logo.png",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey.shade200, // Outline color
                      width: 2.0, // Outline width
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Image.asset(
                      "assets/images/google_logo.png",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey.shade200, // Outline color
                      width: 2.0, // Outline width
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Image.asset(
                      "assets/images/apple_logo.png",
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Register",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
