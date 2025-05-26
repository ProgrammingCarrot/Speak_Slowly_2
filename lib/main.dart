import 'package:flutter/material.dart';
import 'package:speak1/Entrance.dart';
import 'informationPage.dart';
import 'mapPage.dart';
import 'texts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppText.title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(237, 235, 221, 34),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(1, 120, 74, 0)
          )
        )
      ),
      home: const MyHomePage(title: AppText.title,buttonText: AppText.entranceButton,),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title,required this.buttonText});
  final String title;
  final String buttonText;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          //style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => entrance()));
            }, 
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Colors.black)),
            child:Text(
              widget.buttonText,
              style: TextStyle(color: Colors.white),
              ), 
          ),
          ],
        ),
      ),
    );
  }
}
