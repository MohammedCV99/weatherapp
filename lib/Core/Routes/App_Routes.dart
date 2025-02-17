import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Login/UserCubit.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Signup/SignupCubit.dart';
import 'package:weatherapp/Features/Auth/Presention/login.dart';
import 'package:weatherapp/Features/Auth/Presention/Signup.dart';

class AppRouter {
  static const String kMain = '/';
  static const String kLogin = '/login';
  static const String kSignup = '/Signup';
}

final route = GoRouter(
    initialLocation: AppRouter.kSignup,
    errorPageBuilder: (context, state) =>
        MaterialPage(child: Scaffold(body: Text('Not Found'))),
    routes: [
      GoRoute(
          path: AppRouter.kSignup,
          builder: (context, state) => BlocProvider(
                create: (context) => Signupcubit(),
                child: const Signup(),
              )),
      GoRoute(
          path: AppRouter.kLogin,
          builder: (context, state) => BlocProvider(
                create: (context) => LoginCubit(),
                child: const login(),
              )),
    ]);
