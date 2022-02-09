import 'package:beauty_app/core/widgets/NavigationDrawer.dart';
import 'package:beauty_app/features/drawer/domain/cubit/drawer_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return page();
  }

  page() {
    return BlocBuilder<DrawerCubit, MyPage>(builder: (_, widget) {
      return NavigationDrawer();
    });
  }

  firstPage() {
    return BlocBuilder<DrawerCubit, MyPage>(builder: (_, widget) {
      return NavigationDrawer();
    });
  }
}
