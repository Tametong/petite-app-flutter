import 'package:flutter/material.dart';
import 'package:groupe8/Page2.dart';
import 'package:groupe8/Page3.dart';
import 'package:groupe8/Page4.dart';
import 'package:groupe8/Page5.dart';

import 'Acceuil.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Acceuil(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('Page sélectionnée : $index'); // Debug
    });
  }


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

        body: _pages[_selectedIndex],


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
              Icons.document_scanner_outlined,
              Icons.access_time,
              Icons.apps_sharp,
            ].asMap().entries.map((entry) {
              int index = entry.key;
              IconData icon = entry.value;
              return GestureDetector(
                onTap:() => _onItemTapped(index),

                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _selectedIndex == index ? Colors.indigoAccent : Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    icon,
                    color: _selectedIndex == index ? Colors.white : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        )
    );
  }
}

