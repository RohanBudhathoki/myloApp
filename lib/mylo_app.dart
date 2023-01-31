import 'package:flutter/material.dart';
import 'package:myloapp/router.dart';

class MyloApp extends StatelessWidget {
  const MyloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: 'landing',
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
