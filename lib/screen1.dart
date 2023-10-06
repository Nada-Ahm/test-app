import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Screen1 extends StatelessWidget {
  static const String routeName='screen1';
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    List<Card>? cards=[
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color:Color(0xffECFDF3) ,
        elevation:2 ,
        child: ListTile(
          title:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Positive vibes',style:TextStyle(
                    fontSize:25,fontWeight: FontWeight.w600,
                    color:Color(0xff344054)
                )),
                Text('Boost your mood with positive vibes',style:TextStyle(
                    fontSize:20,fontWeight: FontWeight.w600,
                    color:Color(0xff000000)
                )),
                Row(
                  children: [
                    ImageIcon(AssetImage('assets/imgs/Button.png'),color:Color(0xff027A48) ,),
                    Text('10 min',style:TextStyle(
                        fontSize:17,fontWeight: FontWeight.w600,
                        color:Color(0xff000000)
                    )),
                    Spacer(),
                    Image.asset('assets/imgs/Walking the Dog.png')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color:Color(0xffECFDF3) ,
        elevation:2 ,
        child: ListTile(
          title:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Positive vibes',style:TextStyle(
                    fontSize:25,fontWeight: FontWeight.w600,
                    color:Color(0xff344054)
                )),
                Text('Boost your mood with positive vibes',style:TextStyle(
                    fontSize:20,fontWeight: FontWeight.w600,
                    color:Color(0xff000000)
                )),
                Row(
                  children: [
                    ImageIcon(AssetImage('assets/imgs/Button.png'),color:Color(0xff027A48) ,),
                    Text('10 min',style:TextStyle(
                        fontSize:17,fontWeight: FontWeight.w600,
                        color:Color(0xff000000)
                    )),
                    Spacer(),
                    Image.asset('assets/imgs/Walking the Dog.png')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color:Color(0xffECFDF3) ,
        elevation:2 ,
        child: ListTile(
          title:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Positive vibes',style:TextStyle(
                    fontSize:25,fontWeight: FontWeight.w600,
                    color:Color(0xff344054)
                )),
                Text('Boost your mood with positive vibes',style:TextStyle(
                    fontSize:20,fontWeight: FontWeight.w600,
                    color:Color(0xff000000)
                )),
                Row(
                  children: [
                    ImageIcon(AssetImage('assets/imgs/Button.png'),color:Color(0xff027A48) ,),
                    Text('10 min',style:TextStyle(
                        fontSize:17,fontWeight: FontWeight.w600,
                        color:Color(0xff000000)
                    )),
                    Spacer(),
                    Image.asset('assets/imgs/Walking the Dog.png')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white ,
          elevation: 0.0,
          title: Row(
           children: [
             Image.asset('assets/imgs/logo.png',),
             SizedBox(width:20),
           ],
          ),
          actions: [
            Icon(Icons.notifications_none_rounded,
              size:40,color:Colors.black87 ,),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/home-05.png'),size:30,),
                label:'home'

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/grid-01.png'),size: 30),
                label:'home'

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/calendar.png'),size: 30),
                label:'home'

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/user-03.png'),size: 30),
                label:'home'

            ),
          ],
        ) ,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('Hello, Sara Rose',style:TextStyle(
                fontSize:40,fontWeight: FontWeight.w600,
                color:Color(0xff371B34)
              )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('How are you feeling today ?',style:TextStyle(
                    fontSize:35,fontWeight: FontWeight.w400,
                    color:Color(0xff371B34)
                )),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/imgs/pic1.png',),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/imgs/pic2.png',),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/imgs/pic3.png',),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/imgs/pic4.png',),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Feature',style:TextStyle(
                        fontSize:30,fontWeight: FontWeight.w600,
                        color:Color(0xff000000)
                    )),
                  ),
                  SizedBox(width:width*.29,),
                  Text('See more',style:TextStyle(
                      fontSize:28,fontWeight: FontWeight.w600,
                      color:Color(0xff027A48)
                  )),
                  Icon(Icons.arrow_forward_ios,color:Color(0xff027A48) ,)

                ],
              ),
              SizedBox(height: 20,),
              CarouselSlider.builder(
                  itemBuilder: (context, index, realIndex) {
                     return cards[index];
                  },
                  options:CarouselOptions(
                    height:height*.3,
                    autoPlay:true,
                    reverse:false,
                    autoPlayAnimationDuration:Duration(seconds:1 ),
                    enlargeCenterPage:true,
                    enlargeStrategy:CenterPageEnlargeStrategy.height,
                  ),
                  itemCount:cards.length ,
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Exercise',style:TextStyle(
                        fontSize:30,fontWeight: FontWeight.w600,
                        color:Color(0xff000000)
                    )),
                  ),
                  SizedBox(width:width*.29,),
                  Text('See more',style:TextStyle(
                      fontSize:28,fontWeight: FontWeight.w600,
                      color:Color(0xff027A48)
                  )),
                  Icon(Icons.arrow_forward_ios,color:Color(0xff027A48) ,)

                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/imgs/relx.png',),
                      SizedBox(width:width*.24,),
                      Image.asset('assets/imgs/med.png',),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/imgs/breth.png',),
                      SizedBox(width:width*.24,),
                      Image.asset('assets/imgs/yoga.png',),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

    );
  }
}
