import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter3++;
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Subhanallah',
                ),
                Text(
                  '$_counter1',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Divider(
                  height: 20,
                ),
                const Text(
                  'Alhamdulillah',
                ),
                Text(
                  '$_counter2',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Divider(
                  height: 20,
                ),
                const Text(
                  'Allahu Akbar',
                ),
                Text(
                  '$_counter3',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _incrementCounter1,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const Divider(
                  height: 20,
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter2,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const Divider(
                  height: 20,
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter3,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
