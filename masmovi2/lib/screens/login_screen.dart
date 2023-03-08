// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:masmovi2/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/login_form_provider.dart';
import '../ui/input_decorations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
                child: Column(
      children: [
        SizedBox(
          height: size.height * 0.3,
        ),
        CardContainer(
            child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              'Inicio de Sesión',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 30),
            ChangeNotifierProvider(
              create: (_) => LoginFormProvider(),
              child: const _Form(),
            ),
          ],
        )),
        const SizedBox(height: 30),
        const Text('Crear una nueva cuenta',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    ))));
  }
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
          key: loginForm.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => loginForm.email = value,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'john.doe@gamil.com',
                    labelText: 'Correo electrónico',
                    prefixIcon: const Icon(Icons.email)),
                validator: (value) {
                  RegExp emailRegex =
                      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                  if (!emailRegex.hasMatch(value ?? '')) {
                    return 'Ingrese un correo válido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => loginForm.password = value,
                  obscureText: true,
                  decoration: InputDecorations.authInputDecoration(
                    hintText: '*******',
                    labelText: 'Contraseña',
                    prefixIcon: const Icon(Icons.lock_outline),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return 'La contraseña debe tener al menos 8 caracteres';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 3,
                  color: const Color(0xff2D72C2),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 15),
                    child: const Text(
                      'Ingresar',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  onPressed: () {
                    if (!loginForm.isValidForm()) return;
                    // Send to the next page, the rest of the app
                    Navigator.pushReplacementNamed(context, 'avatar');
                  })
            ],
          )),
    );
  }
}
