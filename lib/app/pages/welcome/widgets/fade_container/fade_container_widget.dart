import 'package:flutter/material.dart';

class FadeContainerWidget extends StatelessWidget {
  final Animation<Color> fadeScreen;

  FadeContainerWidget({@required this.fadeScreen});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'fade',
      child: Container(
        decoration: BoxDecoration(
          color: fadeScreen.value,
        ),
      ),
    );
  }
}
