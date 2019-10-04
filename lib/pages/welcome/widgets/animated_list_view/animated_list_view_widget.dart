import 'package:animacao/pages/welcome/widgets/list_data/list_data_widget.dart';
import 'package:flutter/material.dart';

class AnimatedListViewWidget extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListViewWidget({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListDataWidget(
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 3,
          subTitle: 'Com o curso do fluterando',
          title: 'Estudar flutter',
        ),ListDataWidget(
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 2,
          subTitle: 'Com o curso do fluterando',
          title: 'Estudar flutter',
        ),ListDataWidget(
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
          subTitle: 'Com o curso do fluterando',
          title: 'Estudar flutter',
        ),
        ListDataWidget(
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
          subTitle: 'Com o curso do fluterando',
          title: 'Estudar flutter',
        ),
      ],
    );
  }
}
