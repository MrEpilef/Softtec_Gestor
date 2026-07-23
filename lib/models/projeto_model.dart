class Projeto {
  final String codigoCliente;
  final String titulo;
  final String cliente;
  final String status;
  final int progresso;

  Projeto({
    required this.codigoCliente,
    required this.titulo,
    required this.cliente,
    required this.status,
    required this.progresso,
  });

  factory Projeto.fromJson(Map<String, dynamic> json) {
    return Projeto(
      codigoCliente: json['codigoCliente'] ?? 'n/a',
      titulo: json['titulo'] ?? 'Sem título',
      cliente: json['cliente'] ?? 'Cliente não informado',
      status: json['status'] ?? 'Pendente',
      progresso: json['progresso'] ?? 0,
    );
  }
}
