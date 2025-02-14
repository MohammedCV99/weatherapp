import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:weatherapp/Core/Compentes/Button.dart';
import 'package:weatherapp/Core/Compentes/Text.dart';
import 'package:weatherapp/Core/Compentes/TextFormField.dart';
import 'package:weatherapp/Core/Compentes/Toast.dart';
import 'package:weatherapp/Core/Routes/App_Routes.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Login/UserCubit.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Login/UserState.dart';
import 'package:weatherapp/main.dart';
import 'Signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController Email = new TextEditingController();
  TextEditingController Password = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: BlocConsumer<LoginCubit, LoginStates>(builder: (context, state) {
          return ListView(
            children: [
              Image.network(
                  "https://th.bing.com/th/id/OIP.14PWptsw7kdQEJqfH5u3HwHaEK?rs=1&pid=ImgDetMain"),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: H1("Weather App\nEnsure your safety !")),
              SizedBox(height: 100),
              Input("Email", "Enter your Email Address", Email, false),
              Input("Password", "Enter your Password", Password, true),
              SignIn_Button(context, Password.text, () {
                LoginCubit.of(context).userLogin(
                    Email: Email.text,
                    password: Password.text,
                    context: context);
              }, "Log In"),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                      onPressed: () {
                        GoRouter.of(context).go(AppRouter.kSignup);
                      },
                      child: Text("Don't have an account ?"))),
            ],
          );
        }, listener: (context, state) {
          if (state is LoginSuccessState) {
            ToastAction("You are succesfully logged in !", Colors.red);
          } else if (state is LoginErrorState) {
            ToastAction("Email or password are wrong", Colors.red);
          }
        }));
  }
}
