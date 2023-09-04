import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen ({super.key});

  @override
  Widget build(BuildContext context) {

   final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Home",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 1,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  //topRight: Radius.circular(80),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 90, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [                                         
                          const SizedBox(
                            height: 110,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            height: 55,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/cliente");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                "Nuevo Registro",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 135),
                    height: 70,
                    width: double.infinity,
                    child: ElevatedButton(
                    onPressed: () {
                    },                    
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    ),
                    ),
                     child: const Text(
                       "Boton Pago ",
                       style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       ),
                    ),                    
                   ),
                 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

   
}