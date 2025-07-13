import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String text;
  final IconData icon;
  const Details({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon,color: Colors.white,size: 20,),
        SizedBox(width:6),
        Text(maxLines: 2,
          overflow: TextOverflow.ellipsis,
          text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.white,overflow: TextOverflow.ellipsis)),
      ],);
  }
}