import 'package:flutter/material.dart';

class Receitas extends StatelessWidget {
  const Receitas({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    final double altura = MediaQuery.of(context).size.height;
    final double largura = MediaQuery.of(context).size.width;
    final double statusBar_altura = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
       Image.asset('assets/images/chefe.jpg', fit: BoxFit.contain),
        title:  leading: Text('App de Receitas'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              Navigator.pushNamed(context, value);
            },
            itemBuilder: (context) => [
              PopupMenuItem (
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/italia.png',
                      width: 30,
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Italiana'),
                  ],
                ),
                value: '/italiana',
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/mexico.jpg',
                      width: 30,
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Mexicana'),
                  ],
                ),
                value: '/mexicana',
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/japao.jpg',
                      width: 30,
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Japonesa'),
                  ],
                ),
                value: '/japonesa',
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/brasil.jpg',
                      width: 30,
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Brasileira'),
                  ],
                ),
                value: '/brasileira',
              ),
            ],
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(largura * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
            children: [
            Icon(Icons.restaurant_menu, size: 30),
            SizedBox(width: 10),
            Text(
              'Escolha uma culinária:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
           ],
          ),
            SizedBox(height: altura * 0.02),
            ListTile(
              leading: Image.asset('assets/images/italia.png'),
              title: Text('Culinária Italiana'),
              subtitle: Text('Massas, pizzas'),
              onTap: () {
                Navigator.pushNamed(context, '/italiana');
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/mexico.jpg'),
              title: Text('Culinária Mexicana'),
              subtitle: Text('Tacos, guacamole'),
              onTap: () {
                Navigator.pushNamed(context, '/mexicana');
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/japao.jpg'),
              title: Text('Culinária Japonesa'),
              subtitle: Text('Sushis, sashimis'),
              onTap: () {
                Navigator.pushNamed(context, '/japonesa');
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/brasil.jpg'),
              title: Text('Culinária Brasileira'),
              subtitle: Text('Feijoada, churrasco'),
              onTap: () {
                Navigator.pushNamed(context, '/brasileira');
              },
            ),
          ],
        ),
      ),
    );
  }
}
