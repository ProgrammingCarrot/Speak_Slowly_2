import 'package:flutter/material.dart';
import 'texts.dart';

class Mappage extends StatelessWidget {
  const Mappage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppText.title,
          //style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [Text("test Map")]
        ),
      ),
    );
  }
}
