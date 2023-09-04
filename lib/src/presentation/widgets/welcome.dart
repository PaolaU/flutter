import 'package:flutter_movil/src/presentation/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
    required this.size,
    });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      height: size * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
       color: Color(0xFF00BCD4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Bienvenido",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Seleccione una opción para continuar. Si no tiene una cuenta, puede crear una.",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            children: [
              
              const SizedBox(
                width: 105,
              ),
              CustomButton(
                text: 'Iniciar Sesión',
                color: Colors.black,
                textColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}