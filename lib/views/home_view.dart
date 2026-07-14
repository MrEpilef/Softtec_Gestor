import 'package:flutter/material.dart';
import '../widgets/custom_title_bar.dart';
import 'dashboard_view.dart';
import 'projetos_view.dart';
import 'relatorios_view.dart';
import 'configuracao_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _indiceSelecionado = 0;

  final List<Widget> _telas = [
    const DashboardView(),
    ProjetosView(),
    const RelatoriosView(),
    const ConfiguracaoView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001621),
      body: Column(
        children: [
          const CustomTitleBar(),
          Expanded(
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
                    NavigationRailDestination(icon: Icon(Icons.dashboard), label: Text('Dashboard')),
                    NavigationRailDestination(icon: Icon(Icons.folder), label: Text('Projetos')),
                    NavigationRailDestination(icon: Icon(Icons.insert_chart), label: Text('Relatórios')),
                    NavigationRailDestination(icon: Icon(Icons.settings), label: Text('Configuração')),
                  ],
                ),

                
                Expanded(
                  
                  child: _telas[_indiceSelecionado], 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}