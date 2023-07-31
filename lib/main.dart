import 'package:flutter/material.dart';
import 'package:future_async_assign/screens/home_screen.dart';
import 'package:future_async_assign/utils/route_navigation.dart';
import 'package:future_async_assign/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: RouteNavigation.onGenerate,
    );
  }
}

