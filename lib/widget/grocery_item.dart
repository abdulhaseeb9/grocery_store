import 'package:flutter/material.dart';
class GroceryIntemTile extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String ImagePath;
  final color;
  void Function()? onPressed;
  GroceryIntemTile({
    required this.ItemName,
    required this.ItemPrice,
    required this.ImagePath,
    required this.color,
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(ImagePath,height: 84,),
            Text(ItemName),

            MaterialButton(onPressed: onPressed,
              color: color[800],
            child: Text("\$" + ItemPrice,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
            )
          ],
        ),
      ),
    );
  }
}
