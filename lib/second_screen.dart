import 'package:figma_project_1/third_screen.dart';
import 'package:figma_project_1/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var _currentIndex = 0;
  var _current = 0;
  String selectedButtonTitle = 'Location';

  void onPressed(String select) {
    setState(() {
      selectedButtonTitle = select;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Color(0xFF196EEE),
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_rounded),
              label: ('Ticket'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_outlined), label: ('Loved')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: ('Profie')),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 20, right: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: RichText(
                        text: TextSpan(children: const [
                          TextSpan(
                              text: 'Explore\n',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          TextSpan(
                              text: 'Aspen',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 40))
                        ]),
                      ),
                    ),
                    // SizedBox(
                    //   width: 160,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.blue[500],
                        ),
                        Text('Aspen,USA  '),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.blue[500],
                          size: 35,
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 240, 242, 243),
                        hintText: 'Find things to do',
                        prefixIcon: const Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: 'Location',
                          onpressed: onPressed,
                          isSelected: selectedButtonTitle == 'Location',
                        ),
                        CustomButton(
                          title: 'Hotels',
                          onpressed: onPressed,
                          isSelected: selectedButtonTitle == 'Hotels',
                        ),
                        CustomButton(
                          title: 'Food',
                          onpressed: onPressed,
                          isSelected: selectedButtonTitle == 'Food',
                        ),
                        CustomButton(
                          title: 'Adevnture',
                          onpressed: onPressed,
                          isSelected: selectedButtonTitle == 'Adevnture',
                        ),
                        CustomButton(
                          title: 'Tourist',
                          onpressed: onPressed,
                          isSelected: selectedButtonTitle == 'Tourist',
                        ),
                      ],
                    ),
                  ),
                ),
                NavigationBar(
                  height: 100,
                  elevation: 0,
                  backgroundColor: (Colors.transparent),
                  selectedIndex: _current,
                  destinations: const [
                    NavigationDestination(
                        icon: Icon(Icons.location_on), label: 'Location'),
                    NavigationDestination(
                        icon: Icon(Icons.hotel_sharp), label: 'Hotels'),
                    NavigationDestination(
                        icon: Icon(Icons.food_bank_rounded), label: 'Food'),
                    NavigationDestination(
                        icon: Icon(Icons.terrain_outlined), label: 'Adventure'),
                    NavigationDestination(
                        icon: Icon(Icons.thunderstorm_outlined),
                        label: 'Adventure')
                  ],
                  indicatorColor: (Color.fromARGB(255, 204, 214, 223)),
                  onDestinationSelected: (value) {
                    _current = value;
                    setState(() {});
                  },
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(fontSize: 30, fontFamily: '2ndFont'),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'see all',
                          style: TextStyle(color: Colors.blue[500]),
                        ))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Group 3420.png',
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ThirdScreen(),
                                ));
                          },
                          child: Hero(
                            tag: 'heroTag#1',
                            child: Image.asset(
                              'assets/images/Image group.png',
                              height: 370,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Recommended',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: '2ndfont',
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/Rectangle 992.png',
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Explore Aspen',
                              style: TextStyle(fontFamily: '2ndfont'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/Rectangle 992 (1).png',
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Luxurious Aspen',
                              style: TextStyle(fontFamily: '2ndfont'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
