import 'package:flutter/material.dart';
import '../DetalhesJap.dart';
import 'package:url_launcher/url_launcher.dart';

class Japonesa extends StatelessWidget {
  const Japonesa({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/japao.jpg', fit: BoxFit.contain),
        title: Text('Culinaria Japonesa'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Sushi'),
            subtitle: Text('Receita de Sushi Japones'),
            leading: Icon(Icons.ramen_dining),

            onTap: () async {
              const url = 'https://focalizando.com.br/como-fazer-sushi';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesJap(
                  nome: 'Sushi',
                  descricao: 'Simples',
                  modoPreparo: '1. Corte os pepinos e as cenouras em tiras e deixe em molho na água com uma pitada de sal.\n2. Faça o arroz temperado com o sal, para o tempero do arroz misture tudo numa tigelinha ou copo, Transfira o arroz cozido para uma tigela grande, As poucos acrescente o molho de sushi, com a ajuda de uma colher de pau vire o arroz, sem mexer muito.\n3. Deixe esfriar, Forre a esteira para sushi com o plástico filme, Coloque folha de alga com a parte mais áspera para cima, Umedeça a palma das mãos para o arroz não grudar.\n3.Preencha a alga com uma camada de arroz de mais ou menos 1 cm uniformemente, comece pelo meio da alga e espalhe, lembrando sempre de deixar 1 cm de sobra da alga para ter uma finalização elegante, Após isso espalhe um um pouco de wassabi no centro do arroz de ponta a ponta, a quantidade e a gosto, lembrando que wassabi é forte, a quantidade de um grão de feijão é o suficiente, fica leve e dá um gostinho especial ao sushi, Coloque 1 tira de pepino, 1 de cenoura, 1 de salmão e 1 folha de alface, Enrole com o auxilio da esteira e com a ponta dos dedos como se fosse um rocambole, lembrando de tirar a esteira conforme a alga cola no arroz.\n4.No final passe um pouco de água na alga e cole na própria ficará perfeito, Mergulhe a faca no copo com água e corte em rolinhos em um único corte para não amassar o sushi, comece cortando pelo centro,assim eles ficarão da mesma altura, Coloque em uma travessa e decore a seu gosto, Servir com um pequeno prato de molho shoyu.',
                  tempoPreparo: '1h',
                  ingredientes: ['4 xícaras de arroz japonês, encontrado em lojas especializadas', '4 colheres de sopa de vinagre de arroz para sushi encontrado em lojas especializadas', '2 pepinos', 'Tirinhas de salmão', '5 xícaras de água para cozimento', '1 pacote e algas desidratadas para enrolar nori', '2 cenouras', 'Folhas de alface'],
                  caminhoImagem: 'assets/images/sushi.jpg',
                )),
              );
            },
          ),
          ListTile(
            title: Text('Sashimi'),
            subtitle: Text('Receita de Sashimi Japones'),
            leading: Icon(Icons.ramen_dining),
            onTap: () async {
              const url = 'https://cybercook.com.br/receitas/peixes-e-frutos-do-mar/sashimi-de-salmao-16751';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Não foi possível abrir a URL $url';
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesJap(
                  nome: 'Sashimi de Salmão',
                  descricao: 'Receita de Sashimi Japones',
                  modoPreparo: '1. O primeiro passo é encontrar um peixe realmente fresco, Compre a parte que está mais próxima à cabeça, se não for fazer inteiro, É o melhor pedaço para este prato, Aproveite a cabeça para o dashi, o caldo do missoshiro.Aproveite a cabeça para o dashi, o caldo do missoshiro.\n2.  Peça a seu fornecedor que o prepare para sashimi, Ele deverá cortar 2 filés grossos e cada um deles em dois pedaços, no sentido longitudinal, segundo a espessura da carne, Limpe o filé, retirando as partes escuras, Use uma faca bem afiada, Depois, apalpe com a ponta dos dedos, em busca de espinhos e retire-os (é só puxar), Corte em fatias não muito finas.\n3. Os peixes mais moles, como o salmão, são cortados em fatias mais grossas, Somente os peixes brancos são cortados em fatias quase transparentes, Cuidadosamente, arrume as fatias numa travessa ou bandeja, ou em pratinhos individuais,  Decore a seu gosto com o nabo, a cenoura e o que mais sua imaginação desejar, Cada conviva preparará seu próprio molho a gosto, apenas deixe sobre a mesa o shoyu, gengibre e wassabi.',
                  tempoPreparo: '20 minutos',
                  ingredientes: ['1 kg de salmão em filé grosso', 'Shoyu a gosto', 'Gengibre ralado a gosto', 'Wasabi a gosto', 'Nabo ou pepino ralado a gosto', '1/2 unidade de cenoura ralada', 'Cebolinha verde a gosto'],
                  caminhoImagem: 'assets/images/sashimi.jpg',
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