import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:swarp/screens/add/add.dart';
import 'package:swarp/screens/chat/chat.dart';
import 'package:swarp/screens/community/community.dart';
import 'package:swarp/screens/home/home.dart';
import 'package:swarp/screens/profile/profile.dart';
import 'package:swarp/theme/colors.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  PersistentTabController? _controller;
  bool? _hideNavBar;
  int selected = 0;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _controller!.addListener(() {
      setState(() {
        selected = _controller!.index;
      });
    });
    _hideNavBar = false;
  }

  void changeToBottomTab(int tab) {
    setState(() {
      selected = tab;
    });
    _controller!.jumpToTab(tab);
    // print(tab.toString());
    // print('object');
  }

  List<Widget> _buildScreens() {
    return [
      const Home(),
      const Community(),
      const Add(),
      const Chat(),
      const Profile()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home,
            color: AppColors.primary,
          ),
          title: "Home",
          activeColorPrimary: AppColors.primary,
          inactiveColorPrimary: Colors.grey,
          inactiveIcon: const Icon(
            Icons.home,
            color: Colors.grey,
          ),
          contentPadding: 0,
          textStyle: TextStyle(fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.group,
            color: Colors.grey,
          ),
          title: "Community",
          activeColorPrimary: AppColors.primary,
          inactiveColorPrimary: Colors.grey,
          contentPadding: 0,
          textStyle: TextStyle(fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.add_box_rounded,
            color: Colors.grey,
          ),
          title: "Add",
          contentPadding: 0,
          activeColorPrimary: AppColors.primary,
          inactiveColorPrimary: Colors.grey,
          textStyle: TextStyle(fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.chat_outlined,
            color: Colors.grey,
          ),
          title: "Chat",
          contentPadding: 0,
          activeColorPrimary: AppColors.primary,
          inactiveColorPrimary: Colors.grey,
          textStyle: TextStyle(fontWeight: FontWeight.bold)),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.grey,
          ),
          title: "Profile",
          activeColorPrimary: AppColors.primary,
          inactiveColorPrimary: Colors.grey,
          contentPadding: 0,
          textStyle: TextStyle(fontWeight: FontWeight.bold)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView.custom(
        context,
        controller: _controller,
        screens: _buildScreens(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        hideNavigationBar: _hideNavBar,
        margin: EdgeInsets.zero,
        bottomScreenMargin: 0.0,
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        itemCount: 5,
// selectedTabScreenContext: ,
        customWidget: CustomNavBarWidget(
          items: _navBarsItems(),
          selectedIndex: selected,
          onItemSelected: changeToBottomTab,
          key: Key('value'),
        ),
        // Choose the nav bar style with this property
      ),
    );
  }
}

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    required Key key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      // margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
              child: Icon(
            item.title == 'Home'
                ? Icons.home
                : item.title == 'Community'
                    ? Icons.group
                    : item.title == 'Add'
                        ? Icons.add_box_rounded
                        : item.title == 'Chat'
                            ? Icons.chat_outlined
                            : Icons.account_circle_outlined,
            color: isSelected ? AppColors.primary : Colors.grey,
          )),
          Visibility(
              visible: isSelected,
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(
                  item.title!,
                  style: const TextStyle(
                      color: AppColors.primary, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondary,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
