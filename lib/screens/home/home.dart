import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/inputs/custominput.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';
import 'package:swarp/screens/home/catergory_item.dart';
import 'package:swarp/screens/home/product.dart';
import 'package:swarp/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {},
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BlackText(
              text: 'Welcome Rola',
              margin: EdgeInsets.zero,
            ),
            BlackText(
              margin: EdgeInsets.zero,
              text: 'What would you like to exhange?',
              color: Colors.black38,
              weight: FontWeight.normal,
              size: 16,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: AppColors.primary,
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInput(
              margin: const EdgeInsets.only(top: 20, bottom: 40),
              controller: searchEditingController,
              hint: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
            const BlackText(
              text: 'Category',
              size: 22,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryItem(
                    child: Icon(Icons.person),
                    title: 'Clothes',
                  ),
                  CategoryItem(
                    child: Icon(Icons.person),
                    title: 'Clothes',
                  ),
                  CategoryItem(
                    child: Icon(Icons.person),
                    title: 'Clothes',
                  ),
                  CategoryItem(
                    child: Icon(Icons.person),
                    title: 'Clothes',
                  ),
                  CategoryItem(
                    child: Icon(Icons.person),
                    title: 'Clothes',
                  ),
                  CategoryItem(
                    child: Icon(Icons.person),
                    title: 'Clothes',
                  )
                ],
              ),
            ),
            const BlackText(
              margin: EdgeInsets.only(top: 40),
              text: 'New Deals',
              size: 22,
            ),
            GridView.count(
              padding: EdgeInsets.symmetric(vertical: 10),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 25,
              crossAxisSpacing: 20,
              children: [
                Product(
                  title: "West Stool",
                  location: 'Ikoyi',
                  image: 'lib/assets/products/chair.png',
                ),
            //     Product(
            //       title: "West Stool",
            //       location: 'Ikoyi',
            //       image: 'lib/assets/products/chair.png',
            //     ),
            //     Product(
            //       title: "West Stool",
            //       location: 'Ikoyi',
            //       image: 'lib/assets/products/chair.png',
            //     ),
            //     Product(
            //       title: "West Stool",
            //       location: 'Ikoyi',
            //       image: 'lib/assets/products/chair.png',
            //     ),
            //     Product(
            //       title: "West Stool",
            //       location: 'Ikoyi',
            //       image: 'lib/assets/products/chair.png',
            //     )
              ],
            )
          ],
        ),
      )),
    );
  }
}
