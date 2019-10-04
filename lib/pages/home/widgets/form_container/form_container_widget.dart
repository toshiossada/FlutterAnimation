import 'package:animacao/pages/home/widgets/input_field/input_field_widget.dart';
import 'package:flutter/material.dart';

class FormContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputFieldWidget(
              hint: 'Username',
              obscure: false,
              icon: Icons.person_outline,
            ),
            InputFieldWidget(
              hint: 'Password',
              obscure: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
