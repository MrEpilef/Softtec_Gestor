import 'package:flutter/material.dart';
import 'package:gestorsofttec/widgets/campo_texto_padrao.dart';
import 'package:gestorsofttec/widgets/dropdown_padrao.dart';

class CadastroView extends StatelessWidget {
  const CadastroView({super.key});

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
                  Tab(icon: Icon(Icons.badge), text: 'Analistas'),
                  Tab(icon: Icon(Icons.build_circle), text: 'Tipo de serviços'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _FormularioClientes(),
                  _FormularioAnalistas(),
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
  const _FormularioClientes();

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
                child: const CampoTextoPadrao(
                  label: 'Razão Social',
                  hint: 'Ex: Supermercado ...',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: const CampoTextoPadrao(
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
                child: const CampoTextoPadrao(
                  label: 'Endereço',
                  hint: 'Ex: Avenida Oscar ...',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: const CampoTextoPadrao(label: 'CEP', hint: '00000-000'),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: const CampoTextoPadrao(
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
                child: const CampoTextoPadrao(label: 'Contato', hint: 'Nome'),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: const CampoTextoPadrao(
                  label: 'Telefone',
                  hint: '(00) 9 0000-0000',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FormularioAnalistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dados do Analista',
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
                child: const CampoTextoPadrao(
                  label: 'Nome completo',
                  hint: 'Nome Completo',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: DropdownPadrao(
                  label: 'Cargo',
                  itens: ['Suporte Técnico', 'Implantador', 'Gerente', 'Diretor'],
                  onChanged: (valorSelecionado) {
                    print('Cargo selecionado é :$valorSelecionado');
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: const CampoTextoPadrao(
                  label: 'Endereço',
                  hint: 'Ex: Avenida Oscar ...',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: const CampoTextoPadrao(label: 'CEP', hint: '00000-000'),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}
