import 'package:canai/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Canaï"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/logo1.svg",
              color: Colors.red,
            ),
            const Text("Canaï 2023",
              style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
              ),
            ),
            const Text(
              "Traverser en toute sécurité avec Canaï",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset("assets/images/imgTestMobApp.png"),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
            ),
            ElevatedButton.icon(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => Page2()
                    )
                );
              },
              label: const Text("Click",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: const Icon(Icons.calendar_month),
            )
          ],
        ),
      ),
    );
  }
}