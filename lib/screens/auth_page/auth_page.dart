import 'package:flutter/material.dart';
import 'package:test_validation/theme/colors.dart';
import 'package:test_validation/theme/spacing.dart';
import 'package:test_validation/utils/email_validator.dart';
import 'package:test_validation/utils/password_validator.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final formKey = GlobalKey<FormState>();
  var obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.padding16,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your login',
                  labelText: 'Login',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: validateEmail,
              ),
              Spacing.vertical16,
              TextFormField(
                obscureText: obscure,
                maxLength: 64,
                validator: validatePassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscure = !obscure;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: obscure ? AppColors.grey : AppColors.blue,
                    ),
                  ),
                  errorMaxLines: 3,
                  hintText: 'Enter password',
                  labelText: 'Password',
                  counterText: '',
                ),
              ),
              Spacing.vertical16,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => formKey.currentState?.validate(),
                  child: const Text(
                    'Login',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
