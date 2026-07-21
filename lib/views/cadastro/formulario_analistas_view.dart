import 'package:flutter/material.dart';
import 'package:gestorsofttec/widgets/botao_padrao.dart';
import 'package:gestorsofttec/widgets/campo_texto_padrao.dart';
import 'package:gestorsofttec/widgets/dropdown_padrao.dart';

class FormularioAnalistas extends StatelessWidget {
  const FormularioAnalistas({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
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
                      itens: [
                        'Suporte Técnico',
                        'Implantador',
                        'Gerente',
                        'Diretor',
                      ],
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
                      label: 'E-mail',
                      hint: 'analista@softtecsistemas.com.br',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: const CampoTextoPadrao(
                      label: 'Telefone',
                      hint: '(00) 00000-0000',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 32.0,
          left: 32.0,
          child: BotaoPadrao(
            label: 'SALVAR ANALISTA',
            onPressed: () {
              print('Cadastro realizado com sucesso!');
            },
            icone: Icons.save,
          ),
        ),
      ],
    );
  }
}
