import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/View/getlist.dart';
import 'package:providerdemo/provider/counter.dart';
import 'package:providerdemo/provider/spday_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider<SpdayProvider>(create: (_) => SpdayProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const GetListForTest(),
      },
      // home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('test ${context.watch<Counter>().count}'),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<Counter>().increment(),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              tooltip: 'Increment',
              child: Text('0'),
            ),
            FloatingActionButton(
              onPressed: () => context.read<Counter>().decrement(),
              tooltip: 'Increment',
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
