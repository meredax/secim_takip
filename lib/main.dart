import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(
    0xFF558B2F,
    <int, Color>{
      50: Color(0xFFB70404),
      100: Color(0xFFB70404),
      200: Color(0xFFB70404),
      300: Color(0xFFB70404),
      400: Color(0xFFB70404),
      500: Color(0xFFB70404),
      600: Color(0xFFB70404),
      700: Color(0xFFB70404),
      800: Color(0xFFB70404),
      900: Color(0xFFB70404),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: const MyHomePage(title: 'Seçim Sonuç Takip Sistemi 2023'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterCandidate1 = 0;
  int _counterCandidate2 = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counterCandidate1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counterCandidate2++;
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counterCandidate1--;
    });
  }

  void _decrementCounter2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counterCandidate2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB70404),
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // first candidate
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Photo
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF79327),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("lib/images/rte.png"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Number of votes'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '$_counterCandidate1',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton(
                                    onPressed: _decrementCounter,
                                    tooltip: 'Decrement',
                                    child: const Icon(Icons.remove),
                                  ),
                                ), //
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton(
                                    onPressed: _incrementCounter,
                                    tooltip: 'Increment',
                                    child: const Icon(Icons.add),
                                  ),
                                ), //
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // second candidate
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Photo
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF79327),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("lib/images/kk.png"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Number of votes'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '$_counterCandidate2',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton(
                                    onPressed: _decrementCounter2,
                                    tooltip: 'Decrement',
                                    child: const Icon(Icons.remove),
                                  ),
                                ), //
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton(
                                    onPressed: _incrementCounter2,
                                    tooltip: 'Increment',
                                    child: const Icon(Icons.add),
                                  ),
                                ), //
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        /*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counterCandidate1',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),*/
      ),
    );
  }
}
