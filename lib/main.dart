import 'package:cripto_moedas/Configs/app_settings.dart';
import 'package:cripto_moedas/Configs/hive_config.dart';
import 'package:cripto_moedas/repositories/conta_repository.dart';
import 'package:provider/provider.dart';
import 'package:cripto_moedas/repositories/favoritas_repository.dart';
import 'package:flutter/material.dart';
import 'meu_aplicativo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContaRepository()),
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: MeuAplicativo(),
    ),
  );
}
