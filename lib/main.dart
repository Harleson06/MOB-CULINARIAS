import 'package:receitas_varias/Receitas.dart';
import 'package:receitas_varias/typesculinarias/Italiana.dart';
import 'package:receitas_varias/typesculinarias/Japonesa.dart';
import 'package:receitas_varias/typesculinarias/Mexicana.dart';
import 'package:receitas_varias/typesculinarias/Brasileira.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/Receitas',
    routes: {
      '/Receitas': (_) => Receitas(),
      '/italiana': (_) => Italiana(),
      '/japonesa': (_) => Japonesa(),
      '/mexicana': (_) => Mexicana(),
      '/brasileira': (_) => Brasileira(),

    },
  ));
}