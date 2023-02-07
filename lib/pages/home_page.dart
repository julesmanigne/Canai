import 'package:canai/pages/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/logo1.svg",
              color: Colors.yellow,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
            ),
            ElevatedButton.icon(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: MaterialStatePropertyAll(Colors.yellow),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => MainScreen()));
              },
              label: const Text(
                "Click",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: const Icon(Icons.camera_alt),
            )
          ],
        ),
      ),
    );
  }
}
