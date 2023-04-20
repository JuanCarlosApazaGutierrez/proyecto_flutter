import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DataComponents extends StatelessWidget {
  DataComponents(
      {Key? key,
      required this.itemName,
      this.color,
      required this.imagePath,
      required this.itemPrice,
      this.onPressed})
      : super(key: key);
  final String itemName;
  final String itemPrice;
  final String imagePath;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Image.asset(
                imagePath,
                height: 60,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              width: 120, // ancho personalizado
              height: 35, // alto personalizado
              child: MaterialButton(
                onPressed: onPressed,
                color: Colors.white,
                padding: const EdgeInsets.all(1),
                child: Text(
                  itemName,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            )
          ],
        ),
      ),
    );
  }
}
