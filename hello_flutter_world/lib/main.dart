import 'package:flutter/material.dart';
import 'animal.dart';

void main() {
  runApp(const AnimalApp());
}

class AnimalApp extends StatelessWidget {
  const AnimalApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    final ThemeData them = ThemeData();
    return MaterialApp(
      title: 'Hello Flutter World',
      theme: them.copyWith(
          colorScheme: them.colorScheme.copyWith(
        primary: Colors.green,
        secondary: Colors.blue,
      )),
      home: const MyHomePage(title: 'Hello Flutter World'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: ListView.builder(
              itemCount: Animal.samples.length,
              itemBuilder: (context, index) {
                return buildRecipeCard(Animal.samples[index]);
              }),
        ));
  }

  Widget buildRecipeCard(Animal recipe) {
    return Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage(recipe.imageUrl)),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                recipe.label,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Palatino'),
              ),
            ],
          ),
        ));
  }
}
