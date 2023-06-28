import 'package:flutter/material.dart';

class ReadMoreTextItem extends StatefulWidget {
  const ReadMoreTextItem({super.key});

  @override
  State<ReadMoreTextItem> createState() => _ReadMoreTextItemState();
}

class _ReadMoreTextItemState extends State<ReadMoreTextItem> {
  bool isCheckedForeMore = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      height: isCheckedForeMore ? 90 : 50,
      padding: EdgeInsets.all(5),
      curve: Curves.ease,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isCheckedForeMore = !isCheckedForeMore;
          });
        },
        child: Text(
          "The proart studiobook pro 17 is one of the world\'s thinnest"
          "laptops featuring nvidia quadro graphics,"
          "liuf efomug efihmoif iheifh oiheif iohefife mojef "
          "ihmiohefmohhef lfhf uykfly",
          maxLines: isCheckedForeMore ? 500 : 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
