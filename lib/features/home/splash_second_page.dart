import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';

@RoutePage()
class SplashSecondPage extends StatelessWidget {
  const SplashSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Splash 2 Page'),
            IconButton(
                onPressed: () {
                  context.pushRoute(const LoginRoute());
                },
                icon: const Icon(Icons.forward))
          ],
        ),
      ),
    );
  }
}
