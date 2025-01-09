import 'package:cipher/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late PageController _controller;
  double _scale = 0.0;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xffF9F4FB),
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    

    // Start the scale animation
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _scale = 1.0;
      });
    });
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xffF9F4FB), // Set the background color to blue
          ),
          Positioned(
            top: mq.height * 0.20,
            left: mq.width * .25,
            width: mq.width * .5,
            child: AnimatedScale(
              scale: _scale,
              duration: Duration(seconds: 2),
              child: Image.asset('assets/icon/icon.png'),
            ),
          ),
          Positioned(
            top: mq.height * .45,
            left: mq.width * .085,
            width: mq.width * .9,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
              child: Text(
                "Privacy isn't a feature, it's our foundation #",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Mulish',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            bottom: mq.height * 0.25,
            left: mq.width * .15,
            width: mq.width * .7,
            height: mq.height * 0.05,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/icon/google.png'),
              ),
              label: Text(
                'Signin with Google',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Colors.black), // Background color
            ),
          ),
        ],
      ),
    );
  }
}
