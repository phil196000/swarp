import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';
import 'package:swarp/theme/colors.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: AppColors.secondary,
                    ),
                    BlackText(text: 'Settings')
                  ],
                ),
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
                ],
              ),
            ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SettingTile(
              title: 'Name',
              value: 'Rola Ayenyi',
            ),
            SettingTile(
              title: 'Contact',
              value: '07058151431',
            ),
            SettingTile(
              title: 'Connected Accounts',
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            SettingTile(
              title: 'Notification',
              value: 'On',
            ),
            SettingTile(
              title: 'Privacy',
            ),
            SettingTile(
              title: 'Security',
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            SettingTile(
              title: 'Display Mode',
            ),
            SettingTile(
              title: 'Text Size',
            ),
            SettingTile(
              title: 'Language',
              value: 'English',
            ),
          ],
        ),
      ),
    ));
  }
}

class SettingTile extends StatelessWidget {
  final String title;
  final String? value;
  final Function()? onPressed;

  const SettingTile({Key? key, required this.title, this.value, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: BlackText(
        text: title,
        weight: FontWeight.w400,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
              visible: value != null,
              child: BlackText(
                text: value.toString(),
                color: Colors.grey,
                weight: FontWeight.normal,
                size: 14,
              )),
          const Icon(
            Icons.chevron_right,
            color: AppColors.secondary,
          )
        ],
      ),
    );
  }
}
