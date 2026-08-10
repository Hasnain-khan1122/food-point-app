import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController Name = TextEditingController();
  final TextEditingController Phone = TextEditingController();
  final TextEditingController Address = TextEditingController();
  final TextEditingController Email = TextEditingController();
  final TextEditingController Password = TextEditingController();

  final Formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    Name.dispose();
    Phone.dispose();
    Address.dispose();
    Email.dispose();
    Password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -150,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.indigo.withAlpha(120),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -100,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.indigo.withAlpha(120),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: Formkey,
                child: Column(
                  children: [
                    const SizedBox(height: 80),

                    Image.asset(
                      "assets/images/regester1.png",
                      height: 250,
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: Name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter your Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: Phone,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter phone number";
                        }
                        if (value.length != 11) {
                          return "Phone number must be 11 digits";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Phone",
                        hintText: "Enter Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        prefixIcon: const Icon(Icons.phone),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: Address,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Address",
                        hintText: "Enter your Address",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        prefixIcon: const Icon(Icons.location_on),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: Email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        prefixIcon: const Icon(Icons.email),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: Password,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        }
                        if (value.length < 8) {
                          return "Minimum 8 characters required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                      ),
                    ),

                    const SizedBox(height: 20),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (Formkey.currentState!.validate()) {
                          Navigator.pushNamed(context, "/home");
                        }
                      },
                      child: const Text("Register"),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Forgot Password?"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}