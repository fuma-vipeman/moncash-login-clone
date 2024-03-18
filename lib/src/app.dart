import 'package:flutter/material.dart';
import 'package:moncashgetstartedclone/src/theme/theme.dart';
import './login.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: theme(),
      themeMode: ThemeMode.light,
      home: LoginPage(
        title: 'MonCash',
      ),
    );
  }
}
