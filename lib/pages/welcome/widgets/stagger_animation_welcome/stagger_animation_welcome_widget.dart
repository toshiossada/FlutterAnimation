import 'package:animacao/app/pages/welcome/widgets/fade_container/fade_container_widget.dart';
import 'package:animacao/pages/welcome/widgets/animated_list_view/animated_list_view_widget.dart';
import 'package:animacao/pages/welcome/widgets/home_top/home_top_widget.dart';
import 'package:flutter/material.dart';

class StaggerAnimationWelcomeWidget extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color> fadeScreen;

  StaggerAnimationWelcomeWidget({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.325,
            0.8,
            curve: Curves.ease,
          ),
        )),
        fadeScreen = ColorTween(
          begin: Color.fromRGBO(247, 64, 106, 1),
          end: Color.fromRGBO(247, 64, 106, 0),
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Curves.decelerate,
        ));

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTopWidget(
              containerGrow: containerGrow,
            ),
            AnimatedListViewWidget(listSlidePosition: listSlidePosition),
          ],
        ),
        IgnorePointer(
          child: FadeContainerWidget(
            fadeScreen: fadeScreen,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
