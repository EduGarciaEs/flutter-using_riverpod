import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:using_riverpod/pages/direcciones_page.dart';
import 'package:using_riverpod/pages/mapas_page.dart';

import 'package:using_riverpod/widgets/custom_navigationbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Implementing Riverpod')),
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {},
            )
          ],
        ),
        body: _HomePageBody(),
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Cambiar para mostrar la pagina respectiva
    final currentIndex = 1;

    switch (currentIndex) {
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }
  }
}
