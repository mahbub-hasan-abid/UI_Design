import 'package:figma_project_1/second_screen.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  @override
  Widget build(BuildContext context) {
    var wd = MediaQuery.of(context).size.width;
    var ht = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/first screewn bg pc.png',
          fit: BoxFit.cover,
          width: wd,
          height: ht,
        ),
        Positioned(
          top: ht * 0.1,
          left: wd * 0.2,
          child: Text(
            'AspeN',
            style: TextStyle(
                fontSize: 116,
                fontFamily: 'Hiatus',
                color: Color.fromRGBO(238, 241, 245, 1)),
          ),
        ),
        Positioned(
          top: ht * .6,
          left: wd * 0.1,
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(fontFamily: '2ndfont'),
                  children: [
                TextSpan(text: 'Plan your \n', style: TextStyle(fontSize: 34)),
                TextSpan(
                    text: 'Luxurious \n Vacation',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    )),
              ])),
        ),
        Positioned(
            top: ht * 0.85,
            left: wd * 0.1,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(wd * .85, 70),
                    backgroundColor: Color(0xFF186FF2)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ));
                },
                child: Text(
                  'Explore',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )))
      ]),
    );
  }
}
