import 'package:flutter/material.dart';
import 'package:nike_shoe_app/common/text_styles.dart';
import 'package:nike_shoe_app/widgets/shoe_img_collection.dart';
import 'package:nike_shoe_app/widgets/shoe_sizes.dart';
import 'dart:math' as math;

class ProductDesc extends StatelessWidget {
  const ProductDesc({super.key, @required this.productData});
  final productData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      //background
                      //top section
                      headerWid(context),
                      shoeImg(context),
                    ],
                  ),
                  ShoeImgCollection(
                    prodData: productData,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTexts.prodBigName(productData['name']),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child:
                            AppTexts.prodSmallName('\$${productData['price']}'),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          productData['ratings'].toString(),
                        ),
                        Text('(${productData['reviews']} reviews)'),
                        const Expanded(child: SizedBox()),
                        const Text('Free Shipping')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTexts.prodBigName('Select Size'),
                      AppTexts.opacityText('Size Guide')
                    ],
                  ),
                  const SizesBoxes(),
                  AppTexts.descriptionText('Description'),
                  const Text(
                      'asflasjf sddfdfjlas fasdfjlak aslf asreiqpr vwrq w erqjweroj fi wfi fwoiwf kfawie nef owef; wfwl wfnwf lnf ajf lsf sfsfljawepofwl of w iefneifn '),
                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: const Center(
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w500),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox shoeImg(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        child: Center(
          child: Stack(children: [
            Hero(
              tag: 'imageRotated',
              child: Transform.rotate(
                  angle: -math.pi / 6,
                  child: Image.asset('assets/${productData['images'][0]}')),
            ),
          ]),
        ));
  }

  Row headerWid(BuildContext ctx) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(ctx);
          },
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        const CircleAvatar(
          radius: 18,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.favorite_outline,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
