import 'package:flutter/material.dart';
import 'package:gestorsofttec/views/cadastro/formulario_analistas.dart';
import 'package:gestorsofttec/views/cadastro/formulario_clientes.dart';

class CadastroView extends StatelessWidget {
  const CadastroView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        //==========================================
        // CONTAINER DE BAIXO
        // ==========================================
        color: const Color(0xFF001621),
        child: Column(
          children: [
            // ==========================================
            // BARRA DE ABAS (TOPO)
            // ==========================================
            Container(
              //color: const Color.fromARGB(255, 0, 27, 41), - Azul mais claro, da cor da Custom title
              color: const Color(0xFF001621),
              child: const TabBar(
                indicatorColor: Color(0xFFFF4103),
                indicatorWeight: 3.0,
                labelColor: Color(0xFFFF4103),
                unselectedLabelColor: Colors.white60,
                tabs: [
                  Tab(icon: Icon(Icons.store), text: 'Clientes'),
                  Tab(icon: Icon(Icons.badge), text: 'Analistas'),
                  Tab(icon: Icon(Icons.build_circle), text: 'Tipo de serviços'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const FormularioClientes(),
                  const FormularioAnalistas(),
                  //_FormularioServicos(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



