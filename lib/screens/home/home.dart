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
    return SafeArea(
        child: Scaffold(
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
      body: Padding(
          padding: EdgeInsets.only(bottom: 70),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: CustomInput(
                          margin: const EdgeInsets.only(top: 20, bottom: 40),
                          controller: searchEditingController,
                          hint: 'Search',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                      const BlackText(
                        margin: EdgeInsets.only(left: 20, bottom: 30),
                        text: 'Category',
                        size: 22,
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(left: 20),
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
                        margin: EdgeInsets.only(top: 40, left: 20, bottom: 30),
                        text: 'New Deals',
                        size: 22,
                      ),
                    ],
                  ),
                )
              ])),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return const Product(
                        image: 'lib/assets/products/chair.png',
                        title: "West Stool",
                        location: 'Ikado');
                  },
                  childCount: 20,
                ),
              )
            ],
          )),
    ));
  }
}
