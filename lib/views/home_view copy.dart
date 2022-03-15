import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('Desafio Calcular Media'),
      ),
      body: Card(
        child: Row(
          children: <Widget>[
            Column(
              children: [
                Text(
                  'imagem',
                ),
              ],
            ),
            Column(
              children: [
                Text('Titulo'),
                Text('data'),
                Text('descricao'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
