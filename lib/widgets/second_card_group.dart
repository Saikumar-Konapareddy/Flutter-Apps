import 'package:flutter/material.dart';
import 'package:nike_shoe_app/common/text_styles.dart';
import 'package:nike_shoe_app/data_providers/data.dart';
import 'package:nike_shoe_app/screens/product_details.dart';

class SecondCardGroup extends StatelessWidget {
  SecondCardGroup({super.key});
  final data = bottomData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < data.length; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => ProductDesc(productData: data[i])));
              },
              child: Container(
                height: 230,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.42,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5, spreadRadius: 1, color: Colors.grey)
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: AppTexts.opacityText('20% off'),
                          )
                        ],
                      ),
                      Image.asset('assets/${data[i]['images'][1]}'),
                      AppTexts.prodSmallName(data[i]['name']),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          RichText(
                            text: TextSpan(
                              // text: 'Hello ',
                              children: <TextSpan>[
                                TextSpan(
                                    text: data[i]['ratings'].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                                TextSpan(
                                    text: '(${data[i]['reviews']} reviews)',
                                    style: const TextStyle(
                                        color: Color(0xFFA1A1A1))),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppTexts.prodSmallName('\$${data[i]['price']}'),
                          const Icon(Icons.favorite_outline)
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
