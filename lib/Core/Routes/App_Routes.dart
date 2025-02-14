import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weatherapp/Core/SL/SL.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Login/UserCubit.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Signup/SignupCubit.dart';
import 'package:weatherapp/Features/Auth/domain/repositories/base_login_repository.dart';
import 'package:weatherapp/Features/Auth/domain/use_case/login_use_case.dart';
import 'package:weatherapp/login.dart';
import 'package:weatherapp/Signup.dart';
import 'package:weatherapp/main.dart';
import 'package:get_it/get_it.dart';

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
