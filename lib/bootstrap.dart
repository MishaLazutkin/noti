import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti/providers/login_provider.dart';
import 'package:provider/provider.dart';
import 'main.dart';




void bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
      MultiProvider(providers:[
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
          child:  const MyApp()
      )
    );
}