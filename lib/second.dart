import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  Second({required this.pageController});

  PageController pageController;

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text('Sign Up',style: TextStyle(color: Colors.black87,fontSize: 24,fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 30,),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: Colors.pinkAccent,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {
                    emailController.clear();
                  },
                ),
                labelText: 'Email',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: Colors.pinkAccent,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {
                    usernameController.clear();
                  },
                ),
                labelText: 'Username',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: Colors.pinkAccent,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {
                    passwordController.clear();
                  },
                ),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.pinkAccent,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Already have an account?',style: TextStyle(color: Colors.grey.shade500,fontSize: 12),),
              SizedBox(width: 5,),
              TextButton(
                onPressed: (){
                  widget.pageController.animateToPage(0, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                },
                child: Text('Login',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 16),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
