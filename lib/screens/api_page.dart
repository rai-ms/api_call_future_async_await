import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiCallPage extends StatefulWidget {
  const ApiCallPage({super.key});

  @override
  State<ApiCallPage> createState() => _ApiCallPageState();
}

class _ApiCallPageState extends State<ApiCallPage> {
  List<dynamic> user = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body:Center(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(user.length, (index){
                final crUser = user[index];
                return ListTile(
                  leading:CircleAvatar(child: Text("${crUser['id']}")),
                  title: Text("UserId is: ${crUser['userId']} \nTitle is :${crUser['title']}"),
                  subtitle: Text("Body is: ${crUser['body']}"),
                );
              }),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: callApi,
          child: const Icon(Icons.arrow_circle_right),
        ),
      ),
    );
  }

  void callApi () async
  {
    print("User API Call");
    try{
      const url = "https://jsonplaceholder.typicode.com/posts";
      final uri = Uri.parse(url);
      var response = await http.get(uri);
      final body = response.body;
      final json = jsonDecode(body);
      user = json;
    }
    catch(e){
      print("Error in api call $e");
    }
    setState(() {
    });
    print("User API execution completed");
  }
}
