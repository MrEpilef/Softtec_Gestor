import 'package:flutter/material.dart';

class ProjetosView extends StatefulWidget {
  const ProjetosView({Key? key}) : super(key: key);

  @override
  _ProjetosViewState createState() => _ProjetosViewState();
}

class _ProjetosViewState extends State<ProjetosView> {
 
  List<String> projetos = [];

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
      child: Stack(
        children: [
          // CONTEÚDO (Vazio ou Lista)
          Positioned.fill(
            child: projetos.isEmpty
                ? const Center(
                    child: Text(
                      'Nenhum projeto encontrado.\nClique no botão abaixo para criar um novo!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: projetos.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(projetos[index]),
                          subtitle: const Text('Em andamento'),
                          leading: const Icon(Icons.folder),
                        ),
                      );
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
              backgroundColor: const Color(
                0xFF001621,
              ), 
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
