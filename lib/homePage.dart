import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  List<CarouselItem> itemList = [

    CarouselItem(
      image: const AssetImage(
        'assets/images/card.png',
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage(
        'assets/images/card.png',
      ),
      onImageTap: (i) {},
    ),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Padding(
              padding: EdgeInsets.all(2),
              child : AppBar(
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  backgroundColor: Colors.white,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        "Welcome back,",
                        style: TextStyle(
                            fontSize: 14,

                        ),
                      ),
                      Text(
                        'Mike!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      )

                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: (){},
                      child: Icon(Icons.search),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: Icon(Icons.account_balance_wallet_outlined)
                    ),

                  ],
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/images/paul.jpeg'),)
              ),
            )
        ),

        body: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 25, left: 20, right: 20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(fontWeight:FontWeight.w400, color: Colors.black38),
                    ),
                    Text(
                      '\$4,567 893.89',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Credit Cards (2)',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 3),
                              child: Text('Add', style: TextStyle(fontWeight:FontWeight.w400, color: Colors.black38),),
                            ),
                            ElevatedButton(
                              onPressed: (){},
                              child: Icon(Icons.add),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigoAccent,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),

                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 255,
                        width: 350,
                        child: AnotherCarousel(
                          images: [
                            AssetImage('assets/images/card.png'),
                            AssetImage('assets/images/card.png'),

                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          dotColor: Colors.grey,
                          indicatorBgPadding: 7.0,
                          dotBgColor: Colors.transparent,
                          borderRadius: true,
                          moveIndicatorFromBottom: 180.0,
                          noRadiusForIndicator: true,
                        )
                    ),
                  ],
                ),

                //Image.asset('assets/images/card.png', width: MediaQuery.of(context).size.width * .90, height: MediaQuery.of(context).size.height * .33, fit: BoxFit.cover,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey ,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: SizedBox.fromSize(size: Size(35, 4),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last Transactions',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('View all', style: TextStyle(fontWeight:FontWeight.w400, color: Colors.black38)),

                  ]
                ),
                SizedBox.fromSize(size: Size(0, 10),),
                Expanded(child:ListView(
                  children: [
                     Material(
                       child: ListTile(
                         leading: Container(
                           width: 50,
                           height: 50,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             image: DecorationImage(
                               image: AssetImage('assets/images/uber.png'),
                               fit: BoxFit.cover,
                             ),
                           ),
                         ),
                         title: Text('Uber Cab', style: TextStyle(fontWeight: FontWeight.bold),),
                         subtitle: Text('Today, 6:00 PM'),
                         trailing:RichText(
                           text: TextSpan(
                               style: TextStyle(color: Colors.black),
                               children: <TextSpan>[
                                 TextSpan(
                                     text: '-\$18',
                                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                 ),
                                 TextSpan(
                                     text: ' USD',
                                     style: TextStyle(color: Colors.black38)
                                 )
                               ]
                           ),
                         ) ,
                         tileColor: Colors.grey[200],
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(17),
                         ),
                       ),
                     ),
                    SizedBox.fromSize(size: Size(0, 10),),
                    Material(
                      child:  ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/FoodPanda.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text('FoodPanda', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Today, 12:30 PM'),
                        trailing:RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '-\$18',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                ),
                                TextSpan(
                                    text: ' USD',
                                    style: TextStyle(color: Colors.black38)
                                )
                              ]
                          ),
                        ) ,
                        tileColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(size: Size(0, 10),),
                    Material(
                      child:  ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/FoodPanda.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text('FoodPanda', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Today, 12:30 PM'),
                        trailing:RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '-\$18',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                ),
                                TextSpan(
                                    text: ' USD',
                                    style: TextStyle(color: Colors.black38)
                                )
                              ]
                          ),
                        ) ,
                        tileColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),

                  ],
                ))

              ],
            ),
          ),
        ),


        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 20, left: 45, right: 45),
          padding: EdgeInsets.symmetric(vertical: 3),
          decoration: BoxDecoration(
            color: Color(0xFF061747),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icons.add_home_rounded,
              Icons.add_card_outlined,
              Icons.add_card_outlined,
              Icons.access_time,
              Icons.apps_sharp,
            ].asMap().entries.map((entry) {
              int index = entry.key;
              IconData icon = entry.value;
              return GestureDetector(
                onTap: () => setState(() => _index = index),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _index == index ? Colors.indigoAccent : Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    icon,
                    color: _index == index ? Colors.white : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        )
    );
  }
}

