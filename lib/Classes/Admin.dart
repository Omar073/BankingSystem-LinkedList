import 'User.dart';

class Admin extends User {
  Admin(
      {required super.name,
      required super.ID,
      required super.age,
      required super.phonenum,
      required super.email,
      required super.password,});
}


Admin admin1 = Admin(
    name: "Admin 1",
    ID: "admin",
    age: 30,
    phonenum: "0123456789",
    email: "admin@example.com",
    password: "admin",
);