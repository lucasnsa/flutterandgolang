import 'package:flutter/material.dart';
import 'package:fluttergo/bindings.dart';
import 'package:fluttergo/dartinacci.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _fib = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Fibonacci for 25:',
            ),
            Text(
              '$_fib',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fib = bindings.fibonacciSequential(25);
                });
              },
              child: const Text('Golang FibonacciSequential'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fib = bindings.fibonacci(25);
                });
              },
              child: const Text('Golang Fibonacci'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fib = fibonacciInLoops(25);
                });
              },
              child: const Text('Golang fast dart'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fib = fibonacci(25);
                });
              },
              child: const Text('Golang slow dart'),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _fib = 0;
                  });
                },
                icon: const Icon(Icons.clear),
                label: const Text('Clear'))
          ],
        ),
      ),
    );
  }
}
