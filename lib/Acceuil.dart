import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:groupe8/Transaction_tile.dart';


class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  final transactions = [
    {
      'image': 'assets/images/FoodPanda.png',
      'title': 'FoodPanda',
      'subtitle': 'Today, 12:30 PM',
      'amount': '\$18',
      'currency': 'USD',
    },
    {
      'image': 'assets/images/uber.png',
      'title': 'Uber',
      'subtitle': 'Yesterday, 9:00 PM',
      'amount': '\$12',
      'currency': 'USD',
    },
    {
      'image': 'assets/images/uber.png',
      'title': 'Uber',
      'subtitle': 'Yesterday, 9:00 PM',
      'amount': '\$12',
      'currency': 'USD',
    },
    {
      'image': 'assets/images/uber.png',
      'title': 'Uber',
      'subtitle': 'Yesterday, 9:00 PM',
      'amount': '\$12',
      'currency': 'USD',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                    height: 280,
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
            Expanded(child:ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final tx = transactions[index];
                return TransactionTile(
                  imagePath: tx['image']!,
                  title: tx['title']!,
                  subtitle: tx['subtitle']!,
                  amount: tx['amount']!,
                  currency: tx['currency']!,
                );
              },
            )),

          ],
        ),
      ),
    );
  }
}


