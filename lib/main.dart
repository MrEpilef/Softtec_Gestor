import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import '/views/home_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  // Configurações da janela
  WindowOptions windowOptions = const WindowOptions(
    size: Size(1200, 800), // Tamanho da tela ao abrir aplicação
    center: true, // Começa no centro do monitor
    backgroundColor: Colors
        .transparent, // Ajustado para transparente para evitar bordas brancas
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );

  // Aguarda a janela ficar pronta, mostra e foca nela
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()));
}
