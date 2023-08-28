import 'package:flutter/material.dart';
import 'package:nike_shoe_app/common/text_styles.dart';
import 'package:nike_shoe_app/widgets/first_card.dart';
import 'package:nike_shoe_app/widgets/second_card_group.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.menu), Icon(Icons.shopping_bag_outlined)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                children: [
                  const Text(
                    'Nike ',
                    style: TextStyle(
                        fontSize: 48,
                        decoration: TextDecoration.none,
                        color: Colors.black),
                  ),
                  SizedBox(
                      width: 80, child: Image.asset('assets/nike_logo.png'))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Collection',
                  style: TextStyle(
                      fontSize: 48,
                      // fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
              ),
            ),
            FirstCardGroup(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTexts.descriptionText('Special Deal'),
                  AppTexts.prodSmallName('See all')
                ],
              ),
            ),
            SecondCardGroup()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile')
          ]),
    );
  }
}
