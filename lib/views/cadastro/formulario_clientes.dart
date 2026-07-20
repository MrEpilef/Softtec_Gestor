import 'package:flutter/material.dart';
import 'package:gestorsofttec/widgets/campo_texto_padrao.dart';

class FormularioClientes extends StatelessWidget {
  const FormularioClientes({super.key});

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