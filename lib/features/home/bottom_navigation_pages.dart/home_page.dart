import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/core/widgets/app_search_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: Column(
            children: [AppSearchBar(hinttext: 'Search audio')],
          ),
        ),
      ),
    );
  }
}
