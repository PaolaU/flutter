
import 'package:flutter/material.dart';
import 'package:flutter_movil/src/presentation/widgets/welcome.dart';

import 'package:lottie/lottie.dart';

class WelcomeScren extends StatelessWidget {

  const WelcomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _CustomBody(),
    );
  }
}

class _CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;

    return Column(
      children: [
        _AnimationWidget(size: size),
        WelcomeWidget(size: size)
        // Platform.isAndroid ? WelcomeWidget(size: size) : WelcomeAndrod(),
      ],
    );
  }
}

class _AnimationWidget extends StatelessWidget {

  const _AnimationWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * 0.6,
      width: double.infinity,
      //color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Lottie.asset(
              'assets/animations/pay.json',
            ),
          ),
          const Text(
            "PagoPlux",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          const Text(
            "M o v i l",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
