import 'package:flutter/material.dart';
import 'package:nike_shoe_app/common/text_styles.dart';
import 'package:nike_shoe_app/data_providers/data.dart';
import 'package:nike_shoe_app/screens/product_details.dart';

class FirstCardGroup extends StatelessWidget {
  FirstCardGroup({super.key});
  final data = mainData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < data.length; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => ProductDesc(
                              productData: data[i],
                            )));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 10, spreadRadius: 1)
                    ]),
                child: Column(children: [
                  SizedBox(
                      height: 180,
                      child: Hero(
                          tag: "imageRotated",
                          child:
                              Image.asset('assets/${data[i]['images'][0]}'))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTexts.prodBigName(data[i]['name']),
                      const Icon(Icons.favorite_outline)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTexts.prodBigName('\$${data[i]['price']}'),
                      AppTexts.opacityText('Free Shipping')
                    ],
                  )
                ]),
              ),
            ),
        ],
      ),
    );
  }
}
