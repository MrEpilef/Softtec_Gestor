import 'package:flutter/material.dart';

class CadastroView extends StatelessWidget {
  const CadastroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: const Color(0xFF001621),
        child: Column(
          children: [
            // ==========================================
            // BARRA DE ABAS (TOPO)
            // ==========================================
            Container(
              color: const Color.fromARGB(255, 0, 27, 41),

              child: const TabBar(
                indicatorColor: Color(0xFFFF4103),
                indicatorWeight: 3.0,
                labelColor: Color(0xFFFF4103),
                unselectedLabelColor: Colors.white60,
                tabs: [
                  Tab(icon: Icon(Icons.store), text: 'Clientes'),
                  Tab(icon: Icon(Icons.store), text: 'Analistas'),
                  Tab(icon: Icon(Icons.store), text: 'Tipo de serviços'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _FormularioClientes(),
                  //_FormularioAnalistas(),
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

class _FormularioClientes extends StatelessWidget {
  const _FormularioClientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dados do Cliente',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _construirCampo(
                  label: 'Razão Social',
                  hint: 'Ex: Supermercado ...',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: _construirCampo(
                  label: 'CNPJ',
                  hint: '00.000.000/0000-00',
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _construirCampo(
                  label: 'Endereço',
                  hint: 'Ex: Avenida Oscar ...',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: _construirCampo(
                  label: 'CEP',
                  hint: '00000-000',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: _construirCampo(
                  label: 'Cidade - UF',
                  hint: 'Goiânia - GO',
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: _construirCampo(
                  label: 'Contato',
                  hint: 'Nome',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 1,
                child: _construirCampo(
                  label: 'Telefone',
                  hint: '(00) 9 0000-0000',
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
          

          
        ],
      ),
    );
  }
}

Widget _construirCampo({required String label, required String hint}) {
  return TextField(
    style: const TextStyle(color: Colors.white),
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white60),
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.white30),
      filled: true,
      fillColor: const Color(0xFF001B29),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFFF4103), width: 2),
      ),
    ),
  );
}
