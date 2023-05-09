import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_wp/db/functions/db_functions.dart';
import 'package:hive_wp/screens/home/widgets/add_student_widget.dart';
import 'package:hive_wp/screens/home/widgets/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudent();
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          AddStudentWidget(),
          const Expanded(child: ListStudentWidget()),
        ],
      ),
      ),
    );
  }
}