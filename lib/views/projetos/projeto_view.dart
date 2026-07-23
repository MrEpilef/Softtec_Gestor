import 'package:flutter/material.dart';
//import 'package:gestorsofttec/widgets/campo_texto_padrao.dart';
//import 'package:gestorsofttec/controllers/projeto_controller.dart';
//import 'package:gestorsofttec/models/projeto_model.dart';
//import 'package:gestorsofttec/widgets/botao_padrao.dart';
//import 'package:provider/provider.dart';

class ProjetoView extends StatelessWidget {
  final VoidCallback onVoltar;

  const ProjetoView({super.key, required this.onVoltar});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000D15),
      //color: const Color(0xFF000D15),


      child: Padding(
        padding: const EdgeInsets.all(32.0),


        child: DefaultTabController(
          length: 3,


          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFF001621),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.1), 
                width: 1.0,
              ),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 16), 
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                        onPressed: onVoltar,
                        tooltip: 'Voltar para a lista',
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                      ),
            
                      const SizedBox(width: 16), 
            
                      Expanded(
                        child: TabBar(
                          indicatorColor: Color(0xFFFF4103),
                          indicatorWeight: 3.0,
                          labelColor: Color(0xFFFF4103),
                          unselectedLabelColor: Colors.white60,
                            tabs: [
                              Tab(icon: Icon(Icons.store), text: 'Financeiro'),
                              Tab(icon: Icon(Icons.badge), text: 'Diário'),
                              Tab(icon: Icon(Icons.badge), text: 'Pendências'),
                            ],
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
            
                  Expanded(
                    child: TabBarView(
                      children: [
                        //FormularioClientes(),
                        //FormularioAnalistas(),
                        //FormularioServicos(),
                      ],
                    ),
                  ),
                ],
              ),
          ),
          
        ),
      ),
    );
  }
}
