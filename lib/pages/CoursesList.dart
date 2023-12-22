import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Classes/Center.dart';
import '../Classes/Course.dart';
import '../Classes/User.dart';
import '../Custom widgets/CenterCard.dart';
import '../Custom widgets/CourseCard.dart';
import '../Providers/UserProvider.dart';

class CoursesList extends StatefulWidget {
  const CoursesList({super.key});

  @override
  _CoursesListState createState() => _CoursesListState();
}

class _CoursesListState extends State<CoursesList> {
  bool _isCoursesSelected = true;
  late User user;

  void _toggleSelected(bool selected) {
    setState(() {
      _isCoursesSelected = selected;
    });
  }

  List<CourseCard> _buildCourseItems(List<Course> courses) {
    return courses.map((course) {
      return CourseCard(
        course: course,
      );
    }).toList();
  }

  List<CenterCard> _buildCenterItems(List<myCenter> centers) {
    return centers.map((center) {
      return CenterCard(
        center: center,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    user = context.watch<UserProvider>().user!;
    final EdgeInsets padding = MediaQuery.of(context).padding;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          16.0,
          padding.top + 32.0,
          16.0,
          16.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, ${user.getFirstName()}!',
                    style: const TextStyle(
                      color: Color(0xFF0F172A),
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                  const Icon(Icons.menu_book_outlined,
                      color: Color(0xFF7BB4E3), size: 30),
                ],
              ),
              const SizedBox(height: 24.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F7FA),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    // IconButton(
                    //   icon: const Icon(
                    //     Icons.filter_list,
                    //     color: Color(0xFF7BB4E3),
                    //   ),
                    //   onPressed: () {
                    //     // Handle filter button press
                    //   },
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _toggleSelected(true),
                    child: _buildOptionButton('Courses', _isCoursesSelected),
                  ),
                  const SizedBox(width: 16.0),
                  GestureDetector(
                    onTap: () => _toggleSelected(false),
                    child: _buildOptionButton('Centers', !_isCoursesSelected),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              _isCoursesSelected
                  ? Container(
                      height: screenHeight / 1.7,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _buildCourseItems(courses).length,
                        itemBuilder: (context, index) {
                          return _buildCourseItems(courses)[index];
                        },
                      ),
                    )
                  : Container(
                      height: screenHeight / 1.7,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _buildCenterItems(centers)
                            .length, // Replace with the desired number of items
                        itemBuilder: (context, index) {
                          return _buildCenterItems(centers)[index];
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton(String text, bool isSelected) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth > 300 ? 170 : double.infinity,
          height: 48,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: constraints.maxWidth > 300 ? 170 : double.infinity,
                height: 48,
                decoration: ShapeDecoration(
                  color: isSelected
                      ? const Color(0xFF52B6DF)
                      : const Color(0xFFE8F1FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 15,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
