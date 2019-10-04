import 'package:animacao/pages/home/widgets/form_container/form_container_widget.dart';
import 'package:animacao/pages/home/widgets/signup_button/signup_button_widget.dart';
import 'package:animacao/pages/home/widgets/stagger_animation/stagger_animation_widget.dart';
import 'package:animacao/pages/welcome/welcome_page.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animationController.addStatusListener(
      (status){
        if(status == AnimationStatus.completed){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
        }
      }
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset(
                        "images/tickicon.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FormContainerWidget(),
                    SignupButtonWidget()
                  ],
                ),
                StaggerAnimationWidget(controller: _animationController.view)
              ],
            )
          ],
        ),
      ),
    );
  }
}
