import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Classes/Student.dart';
import '../Classes/User.dart';
import '../Providers/UserProvider.dart';
import 'HomeScreen.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  late User user;
  final ageController = TextEditingController();
  final phoneNumController = TextEditingController();
  final yearController = TextEditingController();
  final collegeController = TextEditingController();
  final majorController = TextEditingController();
  final universityController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isNumeric(String value) {
    return double.tryParse(value) != null;
  }


  @override
  Widget build(BuildContext context) {
    user = context.watch<UserProvider>().user!;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up - Additional Info"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              buildTextField("Age", ageController),
              buildTextField("Phone Number", phoneNumController),
              buildTextField("Year", yearController),
              buildTextField("College", collegeController),
              buildTextField("Major", majorController),
              buildTextField("University", universityController),
              const SizedBox(height: 50),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // Validate the form
                        if (_formKey.currentState!.validate()) {
                          // Check if age is a valid number
                          if (!isNumeric(ageController.text)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Error: Age must be a valid number."),
                              ),
                            );
                            return;
                          }

                          // Save additional user info
                          user.age = int.parse(ageController.text);
                          user.phonenum = phoneNumController.text;
                          (user as Student).year = yearController.text;
                          (user as Student).college = collegeController.text;
                          (user as Student).major = majorController.text;
                          (user as Student).university = universityController.text;

                          // Navigate to the next page or perform additional actions
                          // For now, just show a SnackBar
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Additional info saved!"),
                            ),
                          );

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        }
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Save",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$label cannot be null';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: 'Enter your $label',
          labelText: label,
        ),
      ),
    );
  }

  @override
  void dispose() {
    ageController.dispose();
    phoneNumController.dispose();
    yearController.dispose();
    collegeController.dispose();
    majorController.dispose();
    universityController.dispose();
    super.dispose();
  }
}
