import 'package:amazon_mobile_app/common/widgets/bottom_bar.dart';
import 'package:amazon_mobile_app/constants/global_variables.dart';
import 'package:amazon_mobile_app/features/admin/screens/admin_screen.dart';
import 'package:amazon_mobile_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_mobile_app/features/auth/services/auth_service.dart';
import 'package:amazon_mobile_app/providers/user_provider.dart';
import 'package:amazon_mobile_app/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Mobile App',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: const AuthScreen(),
    );
  }
}
