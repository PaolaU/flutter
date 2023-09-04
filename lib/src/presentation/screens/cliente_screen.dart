import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClienteScreen extends StatelessWidget {
  const ClienteScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController nombre = TextEditingController();
    TextEditingController numerotelefono = TextEditingController();
    TextEditingController direccion = TextEditingController();    
    TextEditingController correoelectronico = TextEditingController();
    TextEditingController valorpago = TextEditingController();
    TextEditingController identificacion = TextEditingController();

   final _formKey = GlobalKey<FormState>();
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
                "Formulario de Registro",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
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
                  //topLeft: Radius.circular(40),
                  topRight: Radius.circular(80),
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
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _nombre(nombre),
                          const SizedBox(
                            height: 15,
                          ),
                          _numerotelefono(numerotelefono), 
                          const SizedBox(
                            height: 10,
                          ),                     

                          _direccion(direccion),
                          const SizedBox(
                            height: 10,
                          ),   
                          _correoelectronico(correoelectronico),
                          const SizedBox(
                            height: 10,
                          ),     
                          _valorpago(valorpago),
                          const SizedBox(
                            height: 10,
                          ),        
                          _identificacion(identificacion),
                          const SizedBox(
                            height: 10,
                          ),          
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            height: 55,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                
                                  //Navigator.pushNamed(context, "/cliente");
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                "Guardar",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  TextFormField _numerotelefono(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        if(value.length > 15){
          return 'Numero de telefono no valido ';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Número de Teléfono',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ), 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

  TextFormField _nombre(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Nombre',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

  TextFormField _direccion(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Dirección',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

  TextFormField _correoelectronico(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        if(value.length > 64){
          return 'Numero de telefono no valido ';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Correo Electrónico',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

  TextFormField _valorpago(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Valor de pago',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

  TextFormField _identificacion(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Identificación',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

}
