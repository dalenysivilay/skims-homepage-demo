import 'package:flutter/material.dart';
import 'package:skims_homepage_mock/src/screens/home_screen.dart';
import 'utils/hex_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skims Homepage Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: HexColor('#AA8F80'),
          onPrimary: HexColor('#FFFFFF'),
          primaryContainer: null,
          onPrimaryContainer: null,
          secondary: HexColor('#F3EEE5'),
          onSecondary: HexColor('#62554A'),
          secondaryContainer: null,
          onSecondaryContainer: null,
          tertiary: null,
          onTertiary: null,
          tertiaryContainer: null,
          onTertiaryContainer: null,
          error: HexColor('#B00020'),
          onError: HexColor('#FFFFFF'),
          errorContainer: null,
          onErrorContainer: null,
          background: HexColor('#FFFFFF'),
          onBackground: HexColor('#000000'),
          surface: HexColor('#FFFFFF'),
          onSurface: HexColor('#000000'),
          surfaceVariant: null,
          onSurfaceVariant: null,
          outline: null,
          outlineVariant: null,
          shadow: null,
          scrim: null,
          inverseSurface: null,
          onInverseSurface: null,
          inversePrimary: null,
        ),
      ),
      home: const HomeScreen(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
