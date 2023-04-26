import 'package:flutter/material.dart';
import '../DetalhesBr.dart';
import 'package:url_launcher/url_launcher.dart';


class Brasileira extends StatelessWidget {
  const Brasileira({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/brasil.jpg', fit: BoxFit.contain),
        title: Text('Culinaria Brasileira'),
      ),
      body: ListView(
        children: [
          ListTile(
            title ('Receita de feijoada Brasileira'),
            leading: Icon(Iconstitle: Text('Feijoada'),
                subtitle: Tex.restaurant_menu),
            onTap: () async {
              const url = 'https://www.receitasnestle.com.br/receitas/feijoada-completa';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesBr(
                  nome: 'Feijoada Brasileira',
                  descricao: 'Receita de feijoada',
                  modoPreparo: '1.  Na véspera, lave bem a costela, a carne-seca, a orelha, o pé, o rabo de porco e o lombo, e deixe de molho por 24 horas na geladeira, trocando a água no mínimo 4 vezes.\n2. Escolha o feijão e deixe de molho por 2 horas. Em uma panela de pressão, coloque o feijão, cubra com a água e cozinhe, em fogo médio, por 25 minutos, após abrir fervura.\n3.  Enquanto isso, escalde as carnes: em uma panela grande, coloque 5 litros de água e leve ao fogo alto para ferver. Junte as carnes e cozinhe por 15 minutos. Despreze a água, corte a carne-seca em pedaços menores e transfira todas as carnes para uma panela de pressão. Cubra com 2 litros de água e cozinhe em fogo alto, após abrir fervura, por cerca de 20 minutos, ou até que as carnes estejam macias.\n4.Em uma panela média, refogue o bacon e o paio em fogo alto por 5 minutos, ou até que dourem. Adicione a cebola e o alho, e refogue por mais 5 minutos. Acrescente 1 concha dos grãos de feijão cozidos e amasse delicadamente. Polvilhe com o MAGGI Tempero & Sabor Feijão e misture bem.\n5.Volte para a panela de pressão, junte as carnes com metade do caldo de cozimento e o cheiro-verde, e cozinhe em fogo médio por 10 minutos, ou até encorpar.\n6.Sirva acompanhado de arroz branco, couve e farofa.',
                  tempoPreparo: ' São pouco mais de 2 horas cozinhando.',
                  ingredientes: ['200 g de costela suína defumada cortada em pedaços', '250 g de carne-seca, em pedaços', 'meia orelha de porco cortada em pedaços', 'meio pé de porco, em pedaços (200 g)', '1 pedaço de lombo suíno defumado, em cubos (300 g)', '2 xícaras (chá) de feijão-preto (350 g)', '12 tortilhas de milho', 'Acompanhamentos a gosto (salsa, queijo ralado, alface, etc.)'],
                  caminhoImagem: 'assets/images/feijoada.jpg',
                )),
              );
            },
          ),
          ListTile(
            title: Text('Churrasco Brasileiro'),
            subtitle: Text('Receita de Churrasco Brasileiro'),
            leading: Icon(Icons.food_bank),
            onTap: () async {
              const url = 'https://www.comidaereceitas.com.br/carnes/churrasco-brasileiro.html';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesBr(
                  nome: 'Churrasco Brasileiro',
                  descricao: 'Receita churrasco com maminha',
                  modoPreparo: 'Em uma assadeira pequena, coloque a carne, tempere com o sal, cubra com papel-alumínio e leve ao forno quente (200 graus), por 35 minutos, ou até a mudar de cor completamente.\n2. Retire o papel e volte ao forno mais 30 minutos, ou até dourar, Enquanto isso, prepare os acompanhamentos: em uma tigela média, misture o tomate, a cebola, o azeite, a água, o vinagre, a salsa, o Tempero SAZÓN e o sal.\n3. Derreta a manteiga em uma frigideira média, junte a farinha de mandioca, o Caldo SAZÓN e a salsa, e misture rapidamente, Retire a carne do forno, remova o restante de sal de sua superfície e sirva em seguida, acompanhada das guarnições.',
                  tempoPreparo: '75 minutos',
                  ingredientes: ['1 peça de maminha (1kg)', '1/2 xícara (chá) de sal grosso', '1 tomate, sem pele, picadinho', '1/2 cebola pequena, picadinha', '1/2 xícara (chá) de azeite de oliva', 'Coentro picado a gosto', 'Sal a gosto'],
                  caminhoImagem: 'assets/images/churrasco.jpg',
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