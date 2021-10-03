import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';
import 'package:swarp/screens/profile/barterhistory/barterhistoryitem.dart';
import 'package:swarp/screens/profile/barterhistory/statuscategoryitem.dart';

class BarterHistory extends StatefulWidget {
  const BarterHistory({Key? key}) : super(key: key);

  @override
  _BarterHistoryState createState() => _BarterHistoryState();
}

class _BarterHistoryState extends State<BarterHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
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
                      icon: const Icon(Icons.chevron_left),
                    ),
                    const BlackText(text: 'Barter History'),
                  ],
                ),
                const BlackText(
                  margin: EdgeInsets.only(top: 0, left: 50),
                  text: "Here's your barter history",
                  decoration: TextDecoration.underline,
                  color: Colors.grey,
                  weight: FontWeight.normal,
                  size: 16,
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatusCategoryItem(
                        icon: Icons.access_time,
                        title: 'Pending',
                      ),
                      StatusCategoryItem(
                        icon: Icons.article_outlined,
                        title: 'Scheduled',
                      ),
                      StatusCategoryItem(
                        icon: Icons.task_alt,
                        title: 'Completed',
                      ),
                      StatusCategoryItem(
                        icon: Icons.star_border,
                        title: 'Rating',
                      )
                    ],
                  ),
                ),
                BarterHistoryItem(
                  status: 'Completed',
                ),
                BarterHistoryItem(
                  status: 'Completed',
                ),
                BarterHistoryItem(
                  status: 'Completed',
                ),
                BarterHistoryItem(
                  status: 'Completed',
                ),
                BarterHistoryItem(
                  status: 'Completed',
                ),
                BarterHistoryItem(
                  status: 'Completed',
                ),
                BarterHistoryItem(
                  status: 'Completed',
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
