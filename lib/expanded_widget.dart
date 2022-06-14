import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  String detailsText;

  ExpandedWidget({Key? key, required this.detailsText}) : super(key: key);

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("\u2022"),
            Text(widget.detailsText),
          ],
        ),
      ],
    );
  }
}

PP(String TExt){
  return Text(TExt);
}
