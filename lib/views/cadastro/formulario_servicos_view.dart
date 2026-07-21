/* import 'package:flutter/material.dart';
import 'package:gestorsofttec/widgets/botao_padrao.dart';
import 'package:gestorsofttec/widgets/campo_texto_padrao.dart';
import 'package:gestorsofttec/widgets/dropdown_padrao.dart';

class FormularioServicos extends StatelessWidget {
  const FormularioServicos({super.key});

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
                'Dados do Serviço',
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
                      label: 'Nome do serviço',
                      hint: 'Nome do serviço',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: DropdownPadrao(
                      label: 'Local',
                      itens: [
                        'Presencial',
                        'Remoto',
                      ],
                      onChanged: (valorSelecionado) {
                        print('O valor selecionado foi $valorSelecionado');
                      },
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
            label: 'SALVAR SERVIÇO',
            onPressed: () {
              print('Serviço salvo com sucesso!');
            },
            icone: Icons.save,
          ),
        ),
      ],
    );
  }
}
 */