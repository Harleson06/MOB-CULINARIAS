import 'package:flutter/material.dart';

class Vegana extends StatelessWidget {
  const Vegana({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinaria Italiana'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Lasanha'),
            subtitle: Text('Receita de lasanha italiana'),
            leading: Icon(Icons.local_dining),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesReceita(nome: 'Lasanha', descricao: 'Receita de lasanha italiana')),
              );
            },
          ),
          ListTile(
            title: Text('Pizza'),
            subtitle: Text('Receita de pizza italiana'),
            leading: Icon(Icons.local_pizza),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesReceita(nome: 'Pizza', descricao: 'Receita de pizza italiana')),
              );
            },
          ),
          // adicione mais itens para exibir mais receitas
        ],
      ),
    );
  }
}

class DetalhesReceita extends StatelessWidget {
  final String nome;
  final String descricao;

  const DetalhesReceita({Key? key, required this.nome, required this.descricao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
      ),
      body: Center(
        child: Text(descricao),
      ),
    );
  }
}