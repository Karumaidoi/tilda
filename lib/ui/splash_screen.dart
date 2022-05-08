import 'dart:async';

import 'package:flutter/material.dart';

import 'mainhome.dart';
import 'onborading.dart';

int? initScreen;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? username;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      initScreen == 0 || initScreen == null
          ? Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const OnBoarding()),
            )
          : Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => OnBoarding()));
    });
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Theme.of(context).cardColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Theme.of(context).buttonColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).cardColor,
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: const Offset(0, -2),
                              )
                            ],
                          ),
                          child: Center(
                              child: Text(
                            'Sp',
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Spoghtlight Wallpaper',
                              style: TextStyle(
                                  color: Theme.of(context).buttonColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Your tilda wallpaper app',
                              style: TextStyle(
                                  color: Theme.of(context).buttonColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('A product of Bestypie Alpha',
                                  style: TextStyle(
                                    // color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ))
                            ]),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
