import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              _incrementCounter1();
              final player = AudioPlayer();
              player.play(AssetSource('audio/1.mp3'));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(40.0), // Sesuaikan dengan kebutuhan
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30.0), // Sesuaikan dengan kebutuhan
              ),
            ),
            child: Text(
              'Subhanallah $_counter1',
              style: TextStyle(fontSize: 20.0), // Sesuaikan dengan kebutuhan
            ),
          ),
          const Divider(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              _incrementCounter2();
              final player = AudioPlayer();
              player.play(AssetSource('audio/2.mp3'));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(40.0), // Sesuaikan dengan kebutuhan
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30.0), // Sesuaikan dengan kebutuhan
              ),
            ),
            child: Text(
              'Alhamdulillah $_counter2',
              style: TextStyle(fontSize: 20.0), // Sesuaikan dengan kebutuhan
            ),
          ),
          const Divider(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              _incrementCounter3();
              final player = AudioPlayer();
              player.play(AssetSource('audio/3.mp3'));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(40.0), // Sesuaikan dengan kebutuhan
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30.0), // Sesuaikan dengan kebutuhan
              ),
            ),
            child: Text(
              'Allahu Akbar $_counter3',
              style: TextStyle(fontSize: 20.0), // Sesuaikan dengan kebutuhan
            ),
          ),
        ],
      ),
    );
  }
}
