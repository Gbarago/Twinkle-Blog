// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twinkle_assesment_app/widgets/all_news_tab_section.dart';
import 'package:twinkle_assesment_app/widgets/breakingnews_card.dart';
import 'package:twinkle_assesment_app/widgets/inputs.dart';
//import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  static String route = 'homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void navToCreatepost() {
    Navigator.pushNamed(context, 'CreatePostScreen');
  } // Navigation to Create poat page

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    // String formattedDate = DateFormat('yyyy-MM-dd').format(now).toString();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xff959FB5),
          selectedItemColor: Color(0xff2281E3),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(
                  Icons.home,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(
                  Icons.search_sharp,
                  //  color:,
                ),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(icon: Container(), label: ''),
            BottomNavigationBarItem(
              icon: Container(
                child: Image.asset('assets/images/savedIcon.png'),
              ),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(
                  Icons.person,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                children: [
                  const Text(
                    'Hello Sonia  👋',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0A1330)),
                  ),
                  SizedBox(width: width * 0.47),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/sonia.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                children: [
                  Input(
                    hintText: 'Search',
                    prefix: const Icon(Icons.search_outlined),
                    fillColor: const Color(0xffF2F2F2),
                    validator: null,
                    onSaved: null,
                    width: width * 0.7,
                    height: height * 0.065,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    height: height * 0.065,
                    width: width * 0.13,
                    decoration: BoxDecoration(
                        color: const Color(0xff2281E3),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Image(
                      image: AssetImage('assets/images/setting.png'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Breaking news',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0A1330)),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              BreakingNewsCard(),
              DefaultTabController(
                initialIndex: 0,
                length: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: TabBar(
                        unselectedLabelColor: Color(0xff939393),
                        //indicator: Decoration(),
                        labelColor: Color(0xff2281E3),
                        tabs: const [
                          Tab(
                            text: 'All',
                          ),
                          Tab(
                            text: 'Information',
                          ),
                          Tab(
                            text: 'Mediadia',
                          ),
                          Tab(
                            text: 'Sports',
                          ),
                          Tab(
                            text: 'Business',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.2,
                      child: TabBarView(children: const [
                        AllTabsScection(),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: navToCreatepost,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
