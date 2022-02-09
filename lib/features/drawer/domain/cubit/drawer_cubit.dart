import 'package:beauty_app/features/drawer/presentation/pages/DrawerPage.dart';
import 'package:beauty_app/features/home/presentation/pages/HomePage.dart';
import 'package:beauty_app/main.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DrawerCubit extends Cubit<MyPage> {
  DrawerCubit()
      : super(MyPage(
          page: HomePage(),
        ));

  static bool homePage = true;

  void togglePage(MyPage page) {
    if (page != null &&
        page ==
            MyPage(
              page: HomePage(),
            )) {
      homePage = true;
      print("change to " + homePage.toString());
      emit(page);
    } else if (page != null) {
      homePage = false;
      print("change to " + homePage.toString());
      emit(page);
    } else {
      homePage = true;
      print("change to " + homePage.toString());
      emit(MyPage(
        page: HomePage(),
      ));
    }
  }

  void previousPage(BuildContext context) {
    navigatorKey.currentState.pushReplacement(
      MaterialPageRoute(builder: (context) => DrawerPage()),
    );
  }
}

class MyPage extends Equatable {
  final Widget page;

  MyPage({
    this.page,
  });

  @override
  List<Object> get props => [];
}
