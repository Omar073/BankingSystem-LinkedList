import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Classes/Center.dart';
import '../Classes/Student.dart';
import '../Classes/User.dart';
import '../Providers/UserProvider.dart';
import '../pages/CenterInfo.dart';

class CenterCard extends StatefulWidget {
  final myCenter center;
  late User user;

  CenterCard({
    required this.center,
    Key? key,
  }) : super(key: key);

  @override
  State<CenterCard> createState() => _CenterCardState();
}

class _CenterCardState extends State<CenterCard> {
  @override
  Widget build(BuildContext context) {
    widget.user = context.watch<UserProvider>().user!;

    // Check if the center is followed by the user
    bool isCenterFollowed = false;
    if (widget.user is Student) {
      // Modify the following line based on how you determine if the center is followed by the user
      // isCenterFollowed = (widget.user as Student).isCenterFollowed(widget.center.centerName);
    }

    return GestureDetector(
      onTap: () {
        // Navigate to CenterInfoScreen
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CenterInfo(
              center: widget.center,
              onChange: () {
                setState(() {});
              },
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.center.centerName,
                      style: const TextStyle(
                        color: Color(0xFF132440),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.center.centerAddress,
                      style: const TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 50,
                height: 120, // Increased height
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft:
                    Radius.circular(20), // Added to make it a full capsule
                    bottomLeft:
                    Radius.circular(20), // Added to make it a full capsule
                  ),
                ),
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CenterInfo(
                          center: widget.center,
                          onChange: () {
                            setState(() {});
                          },
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}