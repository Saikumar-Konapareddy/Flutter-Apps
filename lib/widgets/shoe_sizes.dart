import 'package:flutter/material.dart';

class SizesBoxes extends StatelessWidget {
  const SizesBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (double i = 6; i < 8.5; i += 0.5)
          Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: const Color(0xFFEAEDF4),
                  border: Border.all(
                    width: 3,
                    color: const Color(0xFFFFFFFF),
                    style: BorderStyle.solid,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFEAEDF4),
                        blurRadius: 15,
                        spreadRadius: 2)
                  ]),
              child: Center(
                child: i.toInt() == i
                    ? Text(
                        i.toInt().toString(),
                        style: const TextStyle(
                            decoration: TextDecoration.none, fontSize: 30),
                      )
                    : Text(
                        i.toString(),
                        style: const TextStyle(
                          color: Color(0xFFC1C1C1),
                          decoration: TextDecoration.none,
                          fontSize: 30,
                        ),
                      ),
              )),
      ],
    );
  }
}
