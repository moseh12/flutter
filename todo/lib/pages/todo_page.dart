import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text editing controller to acces what user typed
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  //greetUser method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "type your name"),
              ),

              //button
              ElevatedButton(onPressed: greetUser, child: const Text("Tap"))
            ],
          ),
        ),
      ),
    );
  }
}
