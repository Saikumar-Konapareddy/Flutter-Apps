import 'package:flutter/material.dart';

class ShoeImgCollection extends StatelessWidget {
  const ShoeImgCollection({
    super.key,
    required this.prodData,
  });
  final prodData;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            height: 68,
            width: 68,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 20, spreadRadius: 2)
                ]),
            child: Image.asset(
              'assets/${prodData['images'][i]}',
              fit: BoxFit.cover,
            ),
          ),
      ],
    );
  }
}
