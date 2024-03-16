import 'package:flutter/material.dart';
import 'package:healthwyze/screens/bloodpressure/bloodpressure.dart';
import 'package:healthwyze/screens/homescreen/homescreen.dart';
import 'package:healthwyze/theme/theme_helper.dart';
import 'package:healthwyze/utils/size_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'HealthWyze',
          theme: theme,
          home: BloodPressure(),
        );
      },
    );
  }
}
