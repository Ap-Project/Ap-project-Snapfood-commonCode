import 'package:flutter/material.dart';

const backgroundColor = const Color(0XFFd83e56);
const buttonColor = Colors.white;

class WelcomeScreen extends StatefulWidget {
  final String registrationRouteName;
  final String loginRouteName;
  static String welcomeScreenId = '/WelcomeScreen';

  @override
  const WelcomeScreen(
      {Key key, this.registrationRouteName, this.loginRouteName})
      : super(key: key);

  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/SnapLogo.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                              context, widget.registrationRouteName);
                        });
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Register',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, widget.loginRouteName);
                        });
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Log In',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
