import 'package:flutter/material.dart';
class ItemCatogries extends StatelessWidget {
  final String title,images;
  final Color color;
  const ItemCatogries({super.key,required this.title,required this.images,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        spacing:5,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Image.asset("assets/logo/$images",height:50,),
          ),
          Text(title),

        ],
      ),
    );
  }
}
