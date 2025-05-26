import 'package:flutter/material.dart';
import 'texts.dart';
import 'informationPage.dart';
import 'mapPage.dart';

class entrance extends StatelessWidget {
  const entrance({super.key});

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
          children: [
            infoCard(hint: AppText.information,buttonText: AppText.informationButton),
            mapCard(hint: AppText.map,buttonText: AppText.mapButton),
          ],
        ),
      ),
    );
  }
}

//資訊入口卡片
class infoCard extends StatefulWidget {
  const infoCard({super.key, required this.hint,required this.buttonText});
  final String hint;
  final String buttonText;

  @override
  State<infoCard> createState() => _infocard();
}

//地圖入口卡片
class mapCard extends StatefulWidget {
  const mapCard({super.key, required this.hint,required this.buttonText});
  final String hint;
  final String buttonText;

  @override
  State<mapCard> createState() => _mapCard();
}

//有按鈕跟說明文字
class _infocard extends State<infoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 250,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Text(widget.hint),
          ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Informationpage()));
            }, 
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Colors.black)),
            child:Text(
              widget.buttonText,
              style: TextStyle(color: Colors.white),
              ), 
          ),
        ],
      ),
    );
  }
}

//有按鈕跟說明文字
class _mapCard extends State<mapCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 250,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Text(widget.hint),
          ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Mappage()));
            }, 
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Colors.black)),
            child:Text(
              widget.buttonText,
              style: TextStyle(color: Colors.white),
              ), 
          ),
        ],
      ),
    );
  }
}