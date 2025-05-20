import 'package:flutter/material.dart';

class infocard extends StatefulWidget
{
  const infocard({super.key,required this.hint});
  final String hint;

  @override
  State<infocard> createState() => _infocard();
}

class _infocard extends State<infocard>
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 250,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(9),
      ),
      child:Text(widget.hint),
    );
  }
}
