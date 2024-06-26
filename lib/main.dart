import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dzikir',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dzikir Setelah Sholat'),
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

  void _reset() {
    setState(() {
      _counter1 = 0;
      _counter2 = 0;
      _counter3 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              if (_counter1 < 33) {
                _incrementCounter1();
                final player = AudioPlayer();
                player.play(AssetSource('audio/1.mp3'));
                HapticFeedback.lightImpact();
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(40.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              mainAxisSize:
                  MainAxisSize.min, // To keep the Row as big as its children
              children: <Widget>[
                Image.asset("assets/img/toy$_counter1}.png",
                    width: 80, height: 80), // Adjust the size as needed
                const SizedBox(width: 10), // Space between image and text
                Text(
                  'Subhanallah $_counter1',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (_counter2 < 33) {
                _incrementCounter2();
                final player = AudioPlayer();
                player.play(AssetSource('audio/2.mp3'));
                HapticFeedback.mediumImpact();
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(40.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              mainAxisSize:
                  MainAxisSize.min, // To keep the Row as big as its children
              children: <Widget>[
                Image.asset('assets/img/tayo.png',
                    width: 80, height: 80), // Adjust the size as needed
                const SizedBox(width: 10), // Space between image and text
                Text(
                  'Alhamdulillah $_counter2',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (_counter3 < 33) {
                _incrementCounter3();
                final player = AudioPlayer();
                player.play(AssetSource('audio/3.mp3'));
                HapticFeedback.heavyImpact();
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(40.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              mainAxisSize:
                  MainAxisSize.min, // To keep the Row as big as its children
              children: <Widget>[
                Image.asset('assets/img/wing.png',
                    width: 80, height: 80), // Adjust the size as needed
                const SizedBox(width: 10), // Space between image and text
                Text(
                  'Allahu Akbar $_counter3',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              _reset();
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text(
              'ulangi',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
