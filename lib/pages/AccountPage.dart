import 'package:bankingsystem_linkedlist/pages/SettingsPage.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/classmate1.png",
                width: 67,
                height: 63,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 8, 20, 0),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade300,
                      ), // Top border
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade300,
                      ), // Bottom border
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.grey[400],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Welcome",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "User", // Replace with the user's name or any default text
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.grey[350],
                        child: IconButton(
                          icon: const Icon(Icons.logout),
                          onPressed: () {
                            // Handle logout action
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Profile Tab
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => const ProfilePage(),
                      //   ),
                      // );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(30, 5, 16, 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: const Icon(Icons.person_outline),
                          ),
                          const SizedBox(width: 20),
                          const Text("Profile"),
                          const Spacer(),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.navigate_next)),
                        ],
                      ),
                    ),
                  ),

                  // Settings Tab
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(30, 5, 16, 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: const Icon(Icons.settings),
                          ),
                          const SizedBox(width: 20),
                          const Text("Settings"),
                          const Spacer(),
                          const Icon(Icons.navigate_next),
                        ],
                      ),
                    ),
                  ),
                  // About Tab
                  InkWell(
                    onTap: () {
                      // Handle the row tap action here
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(30, 5, 16, 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: const Icon(Icons.info),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("About Us"),
                          const Spacer(),
                          const Icon(Icons.navigate_next),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        "Privacy Policy",
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
