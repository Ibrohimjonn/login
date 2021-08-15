import 'package:flutter/material.dart';
import 'package:untitled/first.dart';
import 'package:untitled/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: PagerView(title: '',),
    );
  }
}

class PagerView extends StatefulWidget {
  PagerView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _PagerViewState createState() => _PagerViewState();
}

class _PagerViewState extends State<PagerView> {

  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 310,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/blackpink_main.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                height: 400,
                width: 370,
                color: Colors.grey.shade100,
                child: PageView(
                  controller: _pageController,
                  children: [
                    First(pageController: _pageController,),
                    Second(pageController: _pageController,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
