import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  // Configurações da janela
  WindowOptions windowOptions = const WindowOptions(
    size: Size(1200, 800), // Tamanho da tela ao abrir aplicação
    center: true, // Começa no centro do monitor
    backgroundColor: Colors.transparent, // Ajustado para transparente para evitar bordas brancas
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden, 
  );

  // Aguarda a janela ficar pronta, mostra e foca nela
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: TelaDashboard()
  ));
}

class TelaDashboard extends StatefulWidget {
  @override
  _TelaDashboardState createState() => _TelaDashboardState();
}

class _TelaDashboardState extends State<TelaDashboard> {
  int _indiceSelecionado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001621),

      
      body: Column( 
        children: [
          
          // ==========================================
          // 1. BARRA DE TÍTULO NATIVA DO APP
          // ==========================================
          DragToMoveArea(
            child: Container(
              height: 30,
              color: const Color.fromARGB(255, 0, 27, 41), 
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  const Text(
                    'Softtec - Gestor',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  // Botões da janela (Minimizar, Maximizar, Fechar)
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.minimize, color: Colors.white,size: 15),
                        onPressed: () => windowManager.minimize(),
                      ),
                      IconButton(
                        icon: const Icon(Icons.crop_square, color: Colors.white, size: 15),
                        onPressed: () async {
                          if (await windowManager.isMaximized()) {
                            windowManager.unmaximize();
                          } else {
                            windowManager.maximize();
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white, size: 15),
                        hoverColor: Colors.red,
                        onPressed: () => windowManager.close(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),


          Expanded( // Expanded  para a linha preencher o resto da tela abaixo da barra
            child: Row(
              children: [
                NavigationRail(
                  backgroundColor: const Color(0xFF001621),
                  selectedIndex: _indiceSelecionado,
                  extended: true,

                  onDestinationSelected: (int index) {
                    setState(() {
                      _indiceSelecionado = index;
                    });
                  },

                  selectedIconTheme: const IconThemeData(color: Color(0xFFFF4103)),
                  unselectedIconTheme: const IconThemeData(color: Colors.white60),
                  
                  selectedLabelTextStyle: const TextStyle(color: Color(0xFFFF4103), fontWeight: FontWeight.bold),
                  unselectedLabelTextStyle: const TextStyle(color: Colors.white60),

                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.dashboard),
                      label: Text('Dashboard'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.folder),
                      label: Text('Projetos'),
                    ),
                    
                    NavigationRailDestination(
                      icon: Icon(Icons.insert_chart),
                      label: Text('Relatórios'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings),
                      label: Text('Configuração'),
                    ),
                  ],
                ),

                // ÁREA DE CONTEÚDO
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 241, 64, 4), 
                          Color.fromARGB(255, 201, 53, 15), 
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Você está na tela: $_indiceSelecionado',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}