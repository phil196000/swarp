import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/buttons/primary_button.dart';
import 'package:swarp/customised_widgets/buttons/secondary_button.dart';
import 'package:swarp/customised_widgets/inputs/custominput.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';
import 'package:swarp/theme/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const BlackText(
                text: 'Sign In',
                size: 23,
              ),
            ),
            const BlackText(
              text: 'Hello, welcome back!',
              size: 16,
              weight: FontWeight.normal,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: SecondaryButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: AppColors.secondary,
                color: Colors.white,
                text: 'Continue with Google',
                widget: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'lib/assets/google.png',
                    width: 30,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: SecondaryButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: AppColors.secondary,
                color: Colors.white,
                text: 'Continue with Facebook',
                widget: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'lib/assets/facebook.png',
                    width: 30,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: SecondaryButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: AppColors.secondary,
                color: Colors.white,
                text: 'Continue with Twitter',
                widget: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'lib/assets/twitter.png',
                    width: 30,
                  ),
                ),
              ),
            ),
            Row(
              children: const [
                Spacer(),
                Expanded(
                    flex: 2,
                    child: Divider(
                      color: AppColors.primary,
                      thickness: 2,
                    )),
                Expanded(
                    child: Align(
                  child: Text('OR'),
                  alignment: Alignment.center,
                )),
                Expanded(
                    flex: 2,
                    child: Divider(
                      color: AppColors.primary,
                      thickness: 2,
                    )),
                Spacer()
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child:
                  CustomInput(controller: usernameController, hint: 'Username'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child:
                  CustomInput(controller: passwordController, hint: 'Password'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: remember,
                      onChanged: (value) {
                        setState(() {
                          remember = value!;
                        });
                      },
                    ),
                    const BlackText(
                      margin: EdgeInsets.zero,
                      text: 'Remember me',
                      size: 16,
                      weight: FontWeight.normal,
                    )
                  ],
                ),
                SecondaryButton(
                  text: 'Forgot Password?',
                  size: 16,
                  onPressed: () {},
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.15,
              ),
              width: double.infinity,
              child: PrimaryButton(
                padding: const EdgeInsets.symmetric(vertical: 15),
                buttonText: 'Sign In',
                onPressed: () {},
                elevation: 0,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: RichText(
                  text: const TextSpan(
                      text: "Don't have an account yet?",
                      children: [
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                                color: AppColors.primary,
                                decoration: TextDecoration.underline))
                      ],
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.bold)),
                ))
          ],
        ),
      )),
    );
  }
}
