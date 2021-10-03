import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';
import 'package:swarp/screens/profile/profiletab.dart';
import 'package:swarp/theme/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<ProfileTabData> profiletabs = [
    ProfileTabData(title: 'Barter History', icon: Icons.history),
    ProfileTabData(title: 'Saved', icon: Icons.bookmark),
    ProfileTabData(
        title: 'Swarp Request', icon: Icons.mark_email_unread_outlined),
    ProfileTabData(
        title: 'Swarp Wallet', icon: Icons.account_balance_wallet_outlined),
    ProfileTabData(title: 'My Community', icon: Icons.person_outline),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.2,
        backgroundColor: Colors.black12,
        flexibleSpace: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Positioned(
              left: 10,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_left),
              ),
            ),
            Positioned.fill(
                child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(color: AppColors.secondary, width: 2)),
                    child: CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const BlackText(
                    text: "@Rolaayenyi",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 60),
        child: Column(
          children: profiletabs
              .map((e) => ProfileTab(
                    title: e.title,
                    icon: e.icon,
                    onPressed: () {},
                  ))
              .toList(),
        ),
      ),
    ));
  }
}

class ProfileTabData {
  final String title;
  final IconData icon;

  ProfileTabData({required this.title, required this.icon});
}
