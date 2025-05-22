import 'package:flutter/material.dart';
import 'texts.dart';

class Informationpage extends StatelessWidget {
  const Informationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppText.title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          children: [Text("test")]
        ),
      ),
    );
  }
}
