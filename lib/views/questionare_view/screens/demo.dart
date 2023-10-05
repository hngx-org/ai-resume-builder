import 'package:flutter/material.dart';
import 'package:hngx_openai/repository/openai_repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _counter = "No Chat";

  void _incrementCounter() async {
    const String userInput = "What is today's date";
    const String cookie =
        "session=487d97a5-3e43-4502-80d4-9315c3d7bf77.24ZfCu95q06BqVuCUFWuJJoLAgM";

    // Instantiate OpenAIRepository
    OpenAIRepository openAI = OpenAIRepository();

    // For initiating a new chat
    final aiResponse = await openAI.getChat(userInput, cookie);
    // For getting chat completions
    List<String> history = ["What is my name", "How are you today?"];
    final response =
        await openAI.getChatCompletions(history, userInput, cookie);

    setState(() {
      _counter = aiResponse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hit the plus button to get response from the server',
            ),
            Text(
              _counter,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}