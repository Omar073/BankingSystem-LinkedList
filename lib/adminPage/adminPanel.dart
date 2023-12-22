import 'package:classmate/pages/UsersListPage.dart';
import 'package:flutter/material.dart';

import 'AddCoursePage.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Options'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add a Course'),
            onTap: () {
              // navigate to AddCoursePage
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddCoursePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit Course'),
            onTap: () {
              // Handle Edit Course option
              // navigate to AddCoursePage
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => EditCoursePage(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Push Notification to Course'),
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => PushNotification(),
              //   ),
              // );
              // Handle Push Notification option
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text('Assign instructor to Course'),
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => PushNotification(),
              //   ),
              // );
              // Handle Push Notification option
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined),
            title: const Text('View all users'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const UsersListPage(),
                ),
              );
              // Handle Push Notification option
            },
          ),
        ],
      ),
    );
  }
}
