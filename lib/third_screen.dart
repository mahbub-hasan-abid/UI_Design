import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  var lvClr = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Hero(
                  tag: 'heroTag#1',
                  child: Image.asset(
                    'assets/images/last.png',
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 15,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 320,
                  top: 380,
                  child: Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              lvClr = !lvClr;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: lvClr
                                  ? Color.fromARGB(255, 175, 169, 169)
                                  : const Color.fromARGB(255, 224, 31, 18),
                              size: 45,
                            )),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coeurdes Alpes',
                        style: TextStyle(fontSize: 30, fontFamily: '2ndFont'),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: Colors.amber,
                              )),
                          Text('4.5 (355 Reviews)')
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Show map',
                          style: TextStyle(
                              color: Colors.blue[500],
                              fontSize: 18,
                              fontFamily: '2ndfamily',
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text('Read more',
                      style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 15,
                          fontFamily: '2ndfamily',
                          fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.blue[500],
                    size: 35,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Facilities',
                style: TextStyle(
                    fontFamily: '2ndfont',
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Column(
                    children: [
                      Icon(
                        Icons.wifi_rounded,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        '1 Heater',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Column(
                    children: [
                      Icon(
                        Icons.dining_outlined,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        'Dinner',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Column(
                    children: [
                      Icon(
                        Icons.hot_tub_outlined,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          '1 Tub',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Column(
                    children: [
                      Icon(
                        Icons.pool_rounded,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Pool',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('Price'),
                            Text(
                              "\$199",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: '2ndfont',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(200, 60),
                                backgroundColor: Color(0xFF186FF2)),
                            onPressed: () {},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Book Now',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ))
                      ]),
                )),
          ],
        ),
      )),
    ));
  }
}
