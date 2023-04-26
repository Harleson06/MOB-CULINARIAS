import 'package:flutter/material.dart';

class DetalhesJap extends StatelessWidget {
  final String nome;
  final String descricao;
  final String modoPreparo;
  final String tempoPreparo;
  final List<String> ingredientes;
  final String caminhoImagem;


  DetalhesJap({
    required this.nome,
    required this.descricao,
    required this.modoPreparo,
    required this.tempoPreparo,
    required this.ingredientes,
    required this.caminhoImagem, // novo parâmetro para receber o caminho da imagem
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(caminhoImagem), // Adicionando a imagem
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Descrição',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(descricao),
                  SizedBox(height: 16),
                  Text(
                    'Modo de preparo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(modoPreparo),
                  SizedBox(height: 16),
                  Text(
                    'Tempo de preparo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(tempoPreparo),
                  SizedBox(height: 16),
                  Text(
                    'Ingredientes',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: ingredientes.map((item) => Text('- $item')).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}