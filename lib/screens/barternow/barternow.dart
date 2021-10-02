import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';
import 'package:swarp/theme/colors.dart';

class BarterNow extends StatefulWidget {
  const BarterNow({Key? key}) : super(key: key);

  @override
  _BarterNowState createState() => _BarterNowState();
}

class _BarterNowState extends State<BarterNow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.13,
        backgroundColor: Colors.black12,
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chevron_left),
                ),
                BlackText(text: 'Barter Now'),
              ],
            ),
            BlackText(
              margin: EdgeInsets.only(top: 0, left: 50),
              text: "Here's how it works",
              color: Colors.black38,
              weight: FontWeight.normal,
              size: 16,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 40),
              child: RichText(
                  text: TextSpan(
                      text: '01',
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      children: [
                    TextSpan(
                        text: 'Choose items you want to barter',
                        style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 16,
                            fontStyle: FontStyle.normal))
                  ])),
            )
          ],
        ),
      ),
    ));
  }
}
