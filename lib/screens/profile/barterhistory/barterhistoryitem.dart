import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';

class BarterHistoryItem extends StatelessWidget {
  const BarterHistoryItem({Key? key, required this.status}) : super(key: key);
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
          color: status == "Completed"
              ? Color.fromRGBO(0, 200, 0, 0.1)
              : status == "Pending"
                  ? Color.fromRGBO(0, 255, 255, 0.1)
                  : Color.fromRGBO(200, 0, 0, 0.1),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('lib/assets/products/chair.png'),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BlackText(
                    text: 'West Stool',
                    weight: FontWeight.w500,
                  ),
                  const BlackText(
                    text: '@TOLUwhyte',
                    size: 16,
                    weight: FontWeight.normal,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.red,
                        size: 15,
                      ),
                      BlackText(
                        size: 16,
                        text: 'Ikorodu',
                        weight: FontWeight.normal,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: status == "Completed"
                    ? Color.fromRGBO(0, 200, 0, 0.3)
                    : status == "Pending"
                        ? Color.fromRGBO(0, 255, 255, 0.3)
                        : Color.fromRGBO(200, 0, 0, 0.3),
                borderRadius: BorderRadius.circular(10)),
            child: BlackText(
              text: status,
              weight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
