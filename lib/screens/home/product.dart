import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      required this.image,
      required this.title,
      required this.location,
      this.onPressed})
      : super(key: key);
  final String image;
  final String title;
  final String location;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 5),
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Image.asset(
                image,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
            BlackText(
              text: title,
              decoration: TextDecoration.underline,
              margin: EdgeInsets.only(top: 15, left: 20),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Colors.red,
                    size: 15,
                  ),
                  BlackText(
                    text: title,
                    decoration: TextDecoration.underline,
                    weight: FontWeight.normal,
                    size: 14,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
