import 'package:flutter/material.dart';
import '../DetalhesIta.dart';
import 'package:url_launcher/url_launcher.dart';



class Italiana extends StatelessWidget {
  const Italiana({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/italia.png', fit: BoxFit.contain),
        title: Text('Culinaria Italiana'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Pizzas'),
            subtitle: Text('Receita Pizza Italiana'),
            leading: Icon(Icons.local_dining),
            onTap: () async {
              const url = 'https://www.tudogostoso.com.br/receita/122635-massa-de-pizza-italiana-deliciosa.html';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesIta(
                  nome: 'Pizza',
                  descricao: 'Receita de Pizza Italiana',
                  modoPreparo: '1. Misture o fermento com o açúcar, coloque um pouco de água e misture até desmanchar o fermento..\n2. Deixe descansar até formar uma espuma, Reserve, Em outra vasilha coloque o sal com mais um pouco de água.\n3. Em uma vasilha coloque o trigo, jogue a mistura do fermento e açúcar, a água com o sal, o azeite e o resto da água devagar, Misture tudo e sove a massa até ela ficar elástica e lisa, Deixe descansar no minimo 2 horas.',
                  tempoPreparo: '30 minutos',
                  ingredientes: ['3 colheres de azeite', '15 g de sal', '500 g de farinha de trigo de boa qualidade', '1 colher de sopa de açúcar', '25 g de fermento fresco', '300 ml de água'],
                  caminhoImagem: 'assets/images/pizza.jpg',
                )),
              );
            },
          ),
          ListTile(
            title: Text('Massa Caseira Italiana'),
            subtitle: Text('Receita de Massa Caseira Italiana'),
            leading: Icon(Icons.local_pizza),
            onTap: () async {
              const url = 'https://cybercook.com.br/receitas/massas/receita-de-massa-caseira-italiana-73759';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesIta(
                  nome: 'Massa Caseira Italiana',
                  descricao: 'Receita de Massa Caseira Italiana',
                  modoPreparo: '1. Na área de trabalho, faça uma bacia com a farinha,  Adicione os ovos, Misture com um garfo incorporando a farinha aos ovos aos poucos, Continue até formar uma bola, Sove a bola até que a textura fique sedosa (com a massa de farinha de semolina pode achar isto um pouco difícil),  Para ficar mais fácil, divida a bola e sove um pouco de cada vez, Deixe as outras bolas de massa coberta com um pano.\n2. Usando o cilindro: Depois de sovar a massa alguns minutos, divida a massa em um número de bolas igual ao número de ovos usados na massa, Por exemplo: 4 ovos, 4 bolas, Pegue uma bola (deixando as outras de baixo do pano) e a achate com as mãos, Se você não conseguir achatar suficientemente para passar no cilindro precisa sovar mais a massa, Cada marca de cilindro é diferente, mas normalmente tem um controle de espessura, No meu cilindro o mais grosso é 1, Passa a bola achatada no cilindro 1 uma vez.\n3. Dobre a massa em três e passa novamente, e depois dobre e passe de novo, Cada vez que se passa a massa no cilindro ela perde um pouco da textura granulada e começa ficar mais sedosa, É o glutém acordando e deixando a massa elástica, Continue mais duas ou três vezes dobrando e passando até a massa começar a brilhar, Agora, ajuste a espessura do cilindro um pouco mais fino (no meu seria o 2), Passe a massa, sem dobrar, nessa nova espessura,  Reajuste a espessura e novamente passe a massa. .\n3.  Continue fazendo isso até formar uma folha de massa bem fina e bem comprida, Pode-se inclusive cortar a folha no meio se ficar comprida demais para controlar, Passe um pouco de farinha de trigo nos dois lados da folha para que não grude no cilindro e rasgue, Continue até a folha fique quase translúcida (no meu cilindro é o numero 6), Cortando a massa Para fazer fettuccini, tagliarini, pappardelle ou outra massa cortada você pode passar a folha de massa no lado que corte, Se não tiver esse cilindro, ou quiser fazer outro tamanho de fio de massa, você pode cortar a mão, Passe bastante farinha de trigo na folha de massa, Dobre a massa enrolando 3 ou 4 vezes, Corte no tamanho desejado.',
                  tempoPreparo: 'Em menos de cinco minutos, você já consegue deixá-la ao dente. Se a massa for simples, em 3 minutos já pode chegara ao ponto. Se for recheada, quando subir na panela é hora de retirá-la.',
                  ingredientes: ['4 unidades de ovo inteiros (1 ovo inteiro para cada 100g de farinha)', '200 gr de farinha de trigo', '200 gr de semolina'],
                  caminhoImagem: 'assets/images/massa-italiana.jpg',
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

