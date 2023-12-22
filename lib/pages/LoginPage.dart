import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../Classes/User.dart';
import '../Providers/UserProvider.dart';
import 'HomeScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Color myColor = const Color.fromRGBO(179, 121, 223, 0.2);
  var hidePass = true;
  var passIcons = const Icon(Icons.visibility_off);
  final emailCont = TextEditingController();
  final passCont = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SafeArea(
                child: SizedBox(
                  width: 300,
                  height: 200,
                  child: Image(
                    image: AssetImage(
                        'assets/images/support, technology, error _ deadline, stress, man, customer service.png'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0x6082AFC4),
                      Color(0x50B4E7FF),
                    ],
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                        child: Text(
                          "Email or ID",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                        child: TextFormField(
                          // validator: (val) =>
                          //     val!.isEmpty ? 'Enter your email' : null,
                          controller: emailCont,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            hintText: 'Enter email or ID',
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                        child: TextFormField(
                          // validator: (val) =>
                          //     val!.isEmpty ? 'Enter your password' : null,
                          obscureText: hidePass,
                          controller: passCont,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            hintText: 'Enter your password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                hidePass = !hidePass;
                                passIcons = hidePass
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility);
                                setState(() {});
                              },
                              icon: passIcons,
                            ),
                          ),
                        ),
                      ),
                      // const SizedBox(height: 5),
                      // Padding(
                      //   padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                      //   child: TextButton(
                      //     onPressed: () {
                      //       // Handle Forgot Password logic
                      //       // Navigator.of(context).push(
                      //       //   MaterialPageRoute(
                      //       //     builder: (context) => ForgotPasswordScreen(),
                      //       //   ),
                      //       // );
                      //     },
                      //     child: const Text("Forgot Password?"),
                      //   ),
                      // ),
                      const SizedBox(height: 30),
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
                                bool found = false;
                                String email = emailCont.text;
                                String password = passCont.text;
                                for(User u in users){
                                  if((u.email == email || u.ID == email) && u.password == password){
                                    found = true;
                                    context.read<UserProvider>().setCurrentUser(u);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => HomePage()),
                                    );
                                  }
                                }
                                if(!found){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Error'),
                                        content: const Text('Wrong email or password'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              emailCont.clear();
                                              passCont.clear();
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Log in",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(16.0),
                      //   child: Row(
                      //     children: [
                      //       Expanded(
                      //         child: Container(
                      //           margin: const EdgeInsets.only(right: 8.0),
                      //           height: 1.0, // Adjust the height as needed
                      //           color: Colors.grey[600], // Color of the dashes
                      //         ),
                      //       ),
                      //       Text(
                      //         "or",
                      //         style: TextStyle(
                      //           color: Colors.grey[800],
                      //           fontSize: 18,
                      //         ),
                      //       ),
                      //       Expanded(
                      //         child: Container(
                      //           margin: const EdgeInsets.only(left: 8.0),
                      //           height: 1.0, // Adjust the height as needed
                      //           color: Colors.grey[600], // Color of the dashes
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Center(
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(16.0),
                      //     child: Container(
                      //       padding: const EdgeInsets.all(8.0),
                      //       decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         border: Border.all(
                      //           color: Colors.grey.shade300, // Border color
                      //           width: 2.0, // Border width
                      //         ),
                      //         borderRadius: BorderRadius.circular(12.0),
                      //       ),
                      //       child: MaterialButton(
                      //         onPressed: () {},
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Container(
                      //               width: 50.0,
                      //               height: 50.0,
                      //               alignment: Alignment.center,
                      //               child:
                      //                   Image.asset("assets/images/google.png"),
                      //             ),
                      //             const Text(
                      //               "Login with Google",
                      //               style: TextStyle(fontSize: 18),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ?",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[600],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/sign_up');
                            },
                            child: const Text("Sign up"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailCont.dispose();
    passCont.dispose();
    super.dispose();
  }
}
