import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MinhaLista(),
    );
  }
}

List<String> nomes = [
  'João',
  'Felipe',
  'Anderson',
  'Miguel'
];

List<Widget> widgets = [
  ListTile(
    title: Text(nomes[0]),
  ),
  ListTile(
    title: Text(nomes[1]),
  ),
  ListTile(
    title: Text(nomes[2]),
  ),
  ListTile(
    title: Text(nomes[3]),
  ),
];

class MinhaLista extends StatelessWidget {
  const MinhaLista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Teste'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ...widgets,
          ],
        ),
      ),
    );
  }
}
