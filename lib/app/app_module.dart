import 'package:animacao/app/pages/welcome/widgets/fade_container/fade_container_bloc.dart';
import 'package:animacao/pages/home/widgets/input_field/input_field_bloc.dart';
import 'package:animacao/pages/home/widgets/signup_button/signup_button_bloc.dart';
import 'package:animacao/pages/welcome/widgets/list_data/list_data_bloc.dart';
import 'package:animacao/pages/welcome/widgets/animated_list_view/animated_list_view_bloc.dart';
import 'package:animacao/pages/welcome/widgets/category_view/category_view_bloc.dart';
import 'package:animacao/pages/welcome/widgets/home_top/home_top_bloc.dart';
import 'package:animacao/pages/welcome/widgets/stagger_animation_welcome/stagger_animation_welcome_bloc.dart';
import 'package:animacao/pages/welcome/welcome_bloc.dart';

import 'package:animacao/pages/home/widgets/form_container/form_container_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:animacao/app/app_widget.dart';
import 'package:animacao/app/app_bloc.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => FadeContainerBloc()),
        Bloc((i) => ListDataBloc()),
        Bloc((i) => AnimatedListViewBloc()),
        Bloc((i) => CategoryViewBloc()),
        Bloc((i) => HomeTopBloc()),
        Bloc((i) => StaggerAnimationWelcomeBloc()),
        Bloc((i) => WelcomeBloc()),
        Bloc((i) => SignupButtonBloc()),
        Bloc((i) => InputFieldBloc()),
        Bloc((i) => FormContainerBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
