import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Splash Page'),
            IconButton(
                onPressed: () {
                  context.pushRoute(const SplashRoute());
                },
                icon: const Icon(Icons.forward))
          ],
        ),
      ),
    );
  }
}
