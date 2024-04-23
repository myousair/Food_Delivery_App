import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/pages/login.dart';
import 'package:food_delivery_app/pages/registerPage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    }
    else{
      return RegisterPage(
      onTap: togglePages
    );
    }
    
  }
}
