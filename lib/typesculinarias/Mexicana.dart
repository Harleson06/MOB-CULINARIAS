import 'package:flutter/material.dart';
import '../DetalhesMexi.dart';
import 'package:url_launcher/url_launcher.dart';

class Mexicana extends StatelessWidget {
  const Mexicana({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/mexico.jpg', fit: BoxFit.contain),
        title: Text('Culinaria Mexicana'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Taco'),
            subtitle: Text('Receita de taco mexicano'),
            leading: Icon(Icons.fastfood),
            onTap:  () async {
              const url = 'https://www.tudogostoso.com.br/receita/73984-taco-mexicano-original.html';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesMexi(
                  nome: 'Taco',
                  descricao: 'Receita de taco mexicano',
                  modoPreparo: '1. Cozinhe a carne até ficar bem dourada.\n2. Adicione os temperos e mexa bem.\n3. Monte os tacos com a carne e os acompanhamentos.',
                  tempoPreparo: '30 minutos',
                  ingredientes: ['500g de carne moída', '1 cebola picada', '1 pimentão picado', '2 dentes de alho picados', '1 colher de chá de cominho em pó', '1 colher de chá de páprica doce', '12 tortilhas de milho', 'Acompanhamentos a gosto (salsa, queijo ralado, alface, etc.)'],
                  caminhoImagem: 'assets/images/tacos.jpg', // Definindo a imagem do taco
                )),
              );
            },
          ),
          ListTile(
            title: Text('Guacamole'),
            subtitle: Text('Receita de guacamole mexicano'),
            leading: Icon(Icons.local_florist),
            onTap: () async {
              const url = 'https://www.thefools.com.br/blog/post/como-fazer-guacamole-mexicano';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesMexi(
                  nome: 'Guacamole',
                  descricao: 'Receita de guacamole mexicano',
                  modoPreparo: '1. Amasse os abacates em um recipiente.\n2. Adicione os temperos e mexa bem.\n3. Sirva imediatamente.',
                  tempoPreparo: '10 minutos',
                  ingredientes: ['2 abacates maduros', '1 tomate picado', '1/2 cebola picada', '1/2 pimenta jalapeño picada', 'Suco de 1/2 limão', 'Coentro picado a gosto', 'Sal a gosto'],
                  caminhoImagem: 'assets/images/guacamole.jpg', // Definindo a imagem do guacamole
                )),
              );
            },
          ),
          // adicione mais itens para exibir mais receitas
        ],
      ),
    );
  }
}
