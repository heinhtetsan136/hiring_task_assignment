import 'package:assignment/dashboard_controller/dashboard_controller_event.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class HomePageBloc extends Bloc<HomePageEvent, int> {
  final PageController controller;
  static const Duration _duration = Duration(milliseconds: 300);
  static const Curve _curve = Curves.linear;
  HomePageBloc()
      : controller = PageController(),
        super(0) {
    on<gotoHomePage>(
      (event, emit) {
        emit(0);
        controller.animateToPage(0, duration: _duration, curve: _curve);
      },
    );
    on<gotoQuickAction>(
      (event, emit) {
        emit(1);
        controller.animateToPage(1, duration: _duration, curve: _curve);
      },
    );
    on<gotoRecentDiscussion>(
      (event, emit) {
        emit(2);
        controller.animateToPage(2, duration: _duration, curve: _curve);
      },
    );
    on<gotoNeedHelp>(
      (event, emit) {
        emit(3);
        controller.animateToPage(2, duration: _duration, curve: _curve);
      },
    );
  }
  HomePageEvent activate(int value) {
    print(value);
    switch (value) {
      case 0:
        return const gotoHomePage();

      case 1:
        return const gotoQuickAction();
      case 2:
        return const gotoRecentDiscussion();
      default:
        return const gotoNeedHelp();
    }
  }

  @override
  Future<void> close() {
    controller.dispose();
    // TODO: implement close
    return super.close();
  }
}
