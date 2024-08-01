import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_scanner_app/features/Home/cubit/grocery_cubit.dart';
import 'package:grocery_scanner_app/features/Login/screens/login_screen.dart';
import 'package:grocery_scanner_app/features/Login/service/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding is initialized
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GroceryCubit(getIt()),
      child: const MaterialApp(
        home: LoginScreen(),
      ),
    );
  }
}
