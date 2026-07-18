import 'package:flutter/material.dart';

enum TelaProjeto { lista, visualizarProjeto, novoProjeto, editarProjeto }

class ProjetoController extends ChangeNotifier {
  TelaProjeto _telaAtual = TelaProjeto.lista;

  TelaProjeto get telaAtual => _telaAtual;

  void mudarTela(TelaProjeto novaTela) {
    _telaAtual = novaTela;
    notifyListeners();
  }
}
