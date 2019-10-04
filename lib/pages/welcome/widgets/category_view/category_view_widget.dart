import 'package:flutter/material.dart';

class CategoryViewWidget extends StatefulWidget {
  @override
  _CategoryViewWidgetState createState() => _CategoryViewWidgetState();
}

class _CategoryViewWidgetState extends State<CategoryViewWidget> {
  final categories = ['Trabalho', 'Estudos', 'Casa'];

  var _category = 0;

  void selectFoward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _category > 0
              ? () {
                  selectBackward();
                }
              : null,
        ),
        Text(
          categories[_category.abs() % 3].toUpperCase(),
          style: TextStyle(
              fontSize: 18,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300,
              color: Colors.white),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _category < categories.length - 1
              ? () {
                  selectFoward();
                }
              : null,
        ),
      ],
    );
  }
}
