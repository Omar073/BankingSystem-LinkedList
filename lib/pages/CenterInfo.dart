import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Classes/Center.dart';
import '../Classes/Instructor.dart';
import '../Classes/User.dart';
import '../Providers/UserProvider.dart';

class CenterInfo extends StatefulWidget {
  final myCenter center;
  final VoidCallback onChange;

  CenterInfo({
    required this.center,
    required this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  State<CenterInfo> createState() => _CenterInfoState();
}

class _CenterInfoState extends State<CenterInfo> {
  late User user;
  bool isCenterFollowed = false;

  @override
  Widget build(BuildContext context) {
    user = context.watch<UserProvider>().user!;
    // Modify the following line based on how you determine if the center is followed by the user
    // isCenterFollowed = (user as SomeType).isCenterFollowed(widget.center.centerName);

    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text(
            widget.center.centerName,
            style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.menu_book_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  width: width - 50,
                  height: 250,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20)
                              .copyWith(top: 12.0),
                          child: Center(
                            child: Text(
                              widget.center.centerName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            widget.center.centerAddress,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            'Active Hours: ${widget.center.activeHours}',
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        if (user
                            is Instructor) // Modify SomeType based on the actual type of user
                          Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 211, 220, 230),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor:
                                    const Color.fromARGB(255, 233, 240, 255),
                                foregroundColor: Colors.black,
                              ),
                              onPressed: () {
                                // Modify the following based on how you handle center follow/unfollow
                                // if (isCenterFollowed && user is SomeType) {
                                //   // Handle unfollow logic
                                // } else {
                                //   // Handle follow logic
                                // }
                                setState(() {
                                  widget.onChange();
                                });
                              },
                              child: Text(
                                isCenterFollowed ? 'Unfollow' : 'Follow',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Additional UI components for the center
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
