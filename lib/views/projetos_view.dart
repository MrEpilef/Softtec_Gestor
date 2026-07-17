import 'package:flutter/material.dart';
import 'package:gestorsofttec/views/detalhe_projeto_view.dart';

enum TelaProjeto { lista, visualizarProjeto, novoProjeto, editarProjeto }

class ProjetosView extends StatefulWidget {
  const ProjetosView({Key? key}) : super(key: key);

  @override
  _ProjetosViewState createState() => _ProjetosViewState();
}

class _ProjetosViewState extends State<ProjetosView> {
  TelaProjeto _telaAtual = TelaProjeto.lista;

  Widget _construirTelaAtual() {
    switch (_telaAtual) {
      case TelaProjeto.lista:
        return _construirLista();

      case TelaProjeto.novoProjeto:
        return DetalheProjetoView(
          onVoltar: () {
            setState(() {
              _telaAtual = TelaProjeto.lista;
            });
          },
        );
      case TelaProjeto.editarProjeto:
        //Para futura Adição da tela de editar projetos.
        return const Center(
          child: Text('Tela de edição para futura atualização'),
        );

      case TelaProjeto.visualizarProjeto:
        return DetalheProjetoView(
          onVoltar: () {
            setState(() {
              _telaAtual = TelaProjeto.lista;
            });
          },
        );
    }
  }

  Widget _construirLista() {
    final List<Map<String, dynamic>> projetosSimulados = [
      {
        "nome": "Implantação de PDV",
        "cliente": "Mega São Luís",
        "status": "Em Andamento",
        "progresso": 0.65,
        "cor": Colors.blueAccent,
      },
      {
        "nome": "Auditoria e Migração Firebird",
        "cliente": "Supermercado Central",
        "status": "Pendente",
        "progresso": 0.10,
        "cor": Colors.orangeAccent,
      },
      {
        "nome": "Automação Fiscal de Notas",
        "cliente": "Rede Varejo Sul",
        "status": "Concluído",
        "progresso": 1.0,
        "cor": Colors.greenAccent,
      },
    ];
    return Stack(
      children: [
        Positioned.fill(
          child: projetosSimulados.isEmpty
              ? const Center(
                  child: Text(
                    'Nenhum projeto encontrado.\nClique no botão abaixo para criar um novo!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )
              : GridView.builder(
                  padding: EdgeInsets.only(
                    top: 24,
                    left: 24,
                    right: 24,
                    bottom: 100,
                  ),

                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 350,
                    mainAxisExtent: 180,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: projetosSimulados.length,
                  itemBuilder: (context, Index) {
                    final projeto = projetosSimulados[Index];
                    return _construirCard(projeto);
                  },
                ),
        ),

        Positioned(
          bottom: 24.0,
          left: 24.0,
          child: FloatingActionButton.extended(
            onPressed: () {
              // Lógica para novo projeto
              print("Adicionar projeto: clicado");
            },
            icon: const Icon(Icons.add),
            label: const Text('Novo Projeto'),
            backgroundColor: const Color(0xFF001621),
            foregroundColor: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _construirCard(Map<String, dynamic> projeto) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      // InkWell: efeito de "onda" ao clicar e permite capturar o clique
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // Quando o usuário clicar no Card, mudar para a tela de Visualização!
          setState(() {
            _telaAtual = TelaProjeto.visualizarProjeto;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NOME DO PROJETO E ÍCONE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      projeto['nome'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF001621),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(Icons.folder_special, color: projeto['cor']),
                ],
              ),
              const SizedBox(height: 8),

              // NOME DO CLIENTE
              Text(
                'Cliente: ${projeto['cliente']}',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              const Spacer(),

              // STATUS E BARRA DE PROGRESSO
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    projeto['status'],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: projeto['cor'],
                    ),
                  ),
                  Text(
                    '${(projeto['progresso'] * 100).toInt()}%',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              LinearProgressIndicator(
                value: projeto['progresso'],
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(projeto['cor']),
                minHeight: 6,
                borderRadius: BorderRadius.circular(4),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: _construirTelaAtual(),
    );
  }
}
