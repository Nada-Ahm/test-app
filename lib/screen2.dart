import 'package:flutter/material.dart';
import 'package:test_app/MyTheme.dart';

class Screen2 extends StatelessWidget {
  static const String routeName = 'screen2';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/imgs/home-05.png'),
                    size: 30,
                  ),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/imgs/navigation-pointer-01.png'),
                      size: 30),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/imgs/bar-chart-07.png'),
                      size: 30),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage('assets/imgs/user-03.png'), size: 30),
                  label: 'home'),
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/imgs/girl.png',
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          'Hello, Jade',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Ready to workout?',
                            style: Theme.of(context).textTheme.bodySmall)
                      ],
                    ),
                    SizedBox(width: 40),
                    Icon(
                      Icons.notifications_none_rounded,
                      size: 40,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height:30),
                Image.asset('assets/imgs/img.png'),
                SizedBox(height:30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Workout Programs',style: Theme.of(context).textTheme.bodyLarge ,),
                  ],
                ),
                TabBar(
                 labelColor:MythemeData.semimoove,
                 labelStyle: TextStyle(fontSize:16,fontWeight:FontWeight.w600  ),
                 tabs:[
                Tab(text:'All Type',),
                Tab(text:'Full Body'),
                Tab(text:'Upper'),
                Tab(text:'Lower'),
              ]),
                Expanded(
                  child: TabBarView(children:<Widget>[
                    Expanded(child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                        ],
                      ),
                    )),
                    Expanded(child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                        ],
                      ),
                    )),
                    Expanded(child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                        ],
                      ),
                    )),
                    Expanded(child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                          Image.asset('assets/imgs/Plank.png'),
                        ],
                      ),
                    )),

                  ] ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
