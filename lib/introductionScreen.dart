import 'package:flutter/material.dart';
import 'package:groupe8/homePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introductionscreen extends StatefulWidget {
  const Introductionscreen({super.key});

  @override
  State<Introductionscreen> createState() => _IntroductionscreenState();
}

class _IntroductionscreenState extends State<Introductionscreen> {

  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _pages = [
    IntroComponent(
        description: "Safeguard savings, streamline life: our promise for you financial peace of mind",
        imagePath: "assets/images/Sans titre.png",
        title: "Secure Your Savings, Simplify Your Life!"
    ),
    IntroComponent(
        description: "Safeguard savings, streamline life: our promise for you financial peace of mind",
        imagePath: "assets/images/Sans titre.png",
        title: "Secure Your Savings, Simplify Your Life!"
    ),
    IntroComponent(
        description: "Safeguard savings, streamline life: our promise for you financial peace of mind",
        imagePath: "assets/images/Sans titre.png",
        title: "Secure Your Savings, Simplify Your Life!"
    ),

  ];

  void _skip(){
    _pageController.animateToPage(
      _pages.length-1,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut
    );
  }

  void _onNext(){
    if(_currentIndex < _pages.length-1){
      _pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut
      );
    }else{
      _onFinish();
    }
  }

  void _onFinish(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) => _pages[index],
          ),
          _currentIndex == _pages.length - 1 ? SizedBox.shrink() : Positioned(
            bottom: 50,
            left: 20,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo[100]),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20))
              ),
              onPressed: _skip,
              child: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            )
          ),
          Positioned(

              bottom: 45,
              right: 10,
              child: TextButton(
                onPressed: _onNext,
                child:_currentIndex == _pages.length - 1 ? Text(
                   "Finish",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ): Icon(Icons.arrow_circle_right_rounded, size: 50,)
              )
          ),
          Positioned(
            left: 140,
            right: 0,
            bottom: 70,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: _pages.length,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.indigo
                ),
              ),
            )
          )
        ],
      )
    );
  }
}

class IntroComponent extends StatelessWidget {

  final String description;
  final String imagePath;
  final String title;
  const IntroComponent({
    super.key,
    required this.description,
    required this.imagePath,
    required this.title,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 350,),
        SizedBox(height: 30,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:Text(
            description,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700]
            ),
          ) ,
        )

      ],
    );
  }
}

