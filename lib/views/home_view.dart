import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: buildHomePage('Desafio 4'),
    );
  }

  Widget buildHomePage(String title) {
    //
    const titleText = Text(
      'Leiates criativos com Flutter',
      style: TextStyle(
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 9,
      ),
    );

    const subTitle = Text(
      '04/08/2021 - 17:55',
      // textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 9,
      ),
    );

    const detailsTitle = Text(
      'Conheça o Flutter, um framework para desenvolvimento mobile, web e desktop',
      // textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 9,
      ),
      overflow: TextOverflow.clip,
    );

    // #enddocregion leftColumn
    final leftColumn = new Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://www.latercera.com/resizer/e6C29MbcgsEcOFTHzzmFpQRpDTU=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/HNTMP72CMVERFOAVBKHRZYNKFI.jpg"))),
    );
    // #docregion rightColumn
    final rightColumn = Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        // color: Colors.white70,
        width: 175,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText,
            subTitle,
            SizedBox(
              height: 10,
            ),
            detailsTitle
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // #docregion body
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 30),
        height: 140,
        child: Card(
          color: Colors.blue[50],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [leftColumn, rightColumn],
          ),
        ),
      ),
    );
  }
}
