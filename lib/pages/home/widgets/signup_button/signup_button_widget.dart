import 'package:flutter/material.dart';

class SignupButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 160),
      onPressed: () {},
      child: Text(
        'Não possui conta? Cadastre-se',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 12,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
