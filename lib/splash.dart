import 'package:demo_application/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(milliseconds: 2000),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/weather.png',
                  height: 200, width: 200, fit: BoxFit.contain),
            ),
            const Expanded(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('THI - RH - TEM',  style: TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }
}
