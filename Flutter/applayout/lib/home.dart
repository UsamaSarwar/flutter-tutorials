import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade100,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade200,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade300,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade400,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade500,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade600,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade700,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber.shade800,
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade100,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade200,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade300,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade400,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade500,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade600,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade700,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade800,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
