import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/landscape.dart';
import 'package:responsive_ui/potrait.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.isLandscape // context.isLandscape is a GetX method
            ? const FittedBox(
                child: Text(
                    'Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen Landscape Screen '),
              )
            : const FittedBox(
                child: Text(
                    'Potrait Screen Potrait Screen Potrait Screen Potrait Screen ')),
      ),
      body: context.isLandscape ? landscape : potrait,
    );
  }
}
