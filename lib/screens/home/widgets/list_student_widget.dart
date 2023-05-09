import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_wp/db/functions/db_functions.dart';

import '../../../db/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext ctx, List<StudentModel>studentList, Widget? child){
        return ListView.separated(
        itemBuilder: (ctx, index) {
          final data = studentList[index];
          return ListTile(
            title:  Text(data.name),
            subtitle: Text(data.age),
            trailing: IconButton(
              onPressed: (){
              if (data.id != null){
                deleteStudent(data.id!);
              }else{
                print('student id is null.unable to delete');
              }
            },
             icon: Icon(Icons.delete,
             color: Colors.red,
             ),
            )
          );
        },
        separatorBuilder: (ctx, index){
          return const Divider();
        },
        itemCount: studentList.length,
      );

      },

    );
  }
  
  void deleteStudent(int id) {}
}