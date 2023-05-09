import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_wp/db/model/data_model.dart';
import 'package:hive_wp/screens/home/screen_home.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(StudentModelAdapter().typeId))
  {
     Hive.registerAdapter(StudentModelAdapter());

  }
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kk hi',
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
      home:const ScreenHome(),
    );
  }
}  