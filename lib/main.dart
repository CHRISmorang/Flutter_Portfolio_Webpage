import 'package:flutter/material.dart';
import 'package:my_blog_stable/constant_pages/page_home.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color.fromARGB(255, 117, 117, 117),
      title: "Chris Morang",
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(184, 163, 163, 163),
              Color.fromARGB(255, 255, 255, 255)
            ])),
          )),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
