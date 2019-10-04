import 'package:animacao/pages/home/widgets/stagger_animation/stagger_animation_bloc.dart';
import 'package:animacao/pages/home/home_bloc.dart';
import 'package:animacao/pages/welcome/welcome_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:animacao/pages/home/home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => StaggerAnimationBloc()),
        Bloc((i) => HomeBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
