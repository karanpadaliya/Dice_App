import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(
      Duration(seconds: 5),
      () {
        // Navigator.pushNamed(context, "home");
        Navigator.pushReplacementNamed(context, "home");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xff97B7D0).withOpacity(0.6),
        systemNavigationBarColor: Color(0xff97B7D0).withOpacity(0.6),
        systemNavigationBarDividerColor: Color(0xff97B7D0).withOpacity(0.6),
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff97B7D0).withOpacity(0.05),
        ),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "asstes/images/6.png",
                height: 180,
                width: 180,
                // color: Colors.white,
              ),
              SizedBox(
                height: 100,
              ),
              // Loding here
              Text(
                "Let's Play Dice...",
                style: TextStyle(
                  // color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
