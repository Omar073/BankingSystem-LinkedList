import 'package:flutter/material.dart';

import '../Classes/Admin.dart';
import '../Classes/Instructor.dart';
import '../Classes/Student.dart';
import '../Classes/User.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({Key? key}) : super(key: key);

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  // Sample list of users for testing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          User currentUser = users[index];

          // Determine the user type (Student, Instructor, Admin)
          String userType = '';
          if (currentUser is Student) {
            userType = 'Student';
          } else if (currentUser is Instructor) {
            userType = 'Instructor';
          } else if (currentUser is Admin) {
            userType = 'Admin';
          }

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(currentUser.name),
                      subtitle: Text(
                        'ID: ${currentUser.ID}\nType: $userType\nPhone: ${currentUser.phonenum}',
                      ),
                      onTap: () {
                        // Handle tapping on a user (if needed)
                        // For example, navigate to a detailed user page
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
