import 'package:flutter/material.dart';
import 'package:future_async_assign/utils/routes_name.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, RouteName.apiCallScreen);
          },
          child: const SizedBox(
            height: 100,
            width: 100,
            child: Text("Goto API Call"),
          ),
        ),
      ),
    );
  }
}