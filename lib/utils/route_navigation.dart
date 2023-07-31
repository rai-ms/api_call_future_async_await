import 'package:flutter/material.dart';
import 'package:future_async_assign/utils/routes_name.dart';

import '../screens/api_page.dart';
import '../screens/home_screen.dart';

class RouteNavigation
{
  static Route<dynamic> onGenerate(RouteSettings settings)
  {
    switch (settings.name)
    {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const MyHomePage(title: "Hello",));
      case RouteName.apiCallScreen:
        return MaterialPageRoute(builder: (context) => const ApiCallPage());
      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text("Page Not Found 404!", textAlign: TextAlign.center,),
          ),
        )
        );
    }
  }
}