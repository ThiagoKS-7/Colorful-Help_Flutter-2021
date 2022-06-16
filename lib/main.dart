import 'package:app_flutter/screens/camera_test.dart';
import 'package:app_flutter/theme/colors.dart';
import 'package:app_flutter/widgets/generic_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChApp());
}

class ChApp extends StatelessWidget {
  const ChApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorful Help',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(title: 'Colorful Help'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = -1;

  // muda o indice da lista
  void _onItemTapped(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = -1;
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primary, firstBgPrimary],
            ),
          ),
          child: Column(
            children: [
              Container(
                  width: 500,
                  height: 215,
                  child: Image.asset("images/capa2.png")),
              Row(
                children: <Widget>[
                  GenericCard(
                    "images/ocr.png",
                    "Reconhecimento e leitura de texto",
                    (_selectedIndex == 0) ? firstCardShadow : firstCardPrimary,
                    firstCardShadow,
                    width: 90,
                    height: 90,
                    onTap: () => {
                    print("teste 1"),
                    _onItemTapped(0),
                      Future.delayed(Duration(milliseconds: 100), () {
                        _onItemTapped(0);
                      }),
                    Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) => CameraTest(),
                      ),
                    ),
                  },
                  ),
                  GenericCard(
                    "images/lamp.png",
                    "Recon. de objetos semelhantes",
                    scndCardShadow,
                    (_selectedIndex == 1) ? scndCardShadow : scndCardPrimary,
                    width: 90,
                    height: 90,
                    onTap: () =>
                    {
                      print("teste 2"),
                      _onItemTapped(1),
                      Future.delayed(Duration(milliseconds: 100), () {
                      _onItemTapped(1);
                    })

                    },
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  GenericCard(
                    "images/ocr.png",
                    "Recon. cédulas de dinheiro",
                    (_selectedIndex == 2) ? firstCardShadow : firstCardPrimary,
                    firstCardShadow,
                    width: 90,
                    height: 90,
                    onTap: () => {
                      print("teste 3"),
                      _onItemTapped(2),
                      Future.delayed(Duration(milliseconds: 100), () {
                        _onItemTapped(2);
                      }),
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CameraTest(),
                        ),
                      ),
                    },
                  ),
                  GenericCard(
                    "images/lamp.png",
                    "Recon. de códigos de barras",
                    scndCardShadow,
                    (_selectedIndex == 3) ? scndCardShadow : scndCardPrimary,
                    width: 90,
                    height: 90,
                    onTap: () =>
                    {
                      print("teste 4"),
                      _onItemTapped(3),
                      Future.delayed(Duration(milliseconds: 100), () {
                        _onItemTapped(3);
                      })

                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
* CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            firstCardPrimary,
                            firstCardShadow,

                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            scndCardShadow,
                            scndCardPrimary,


                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            firstCardPrimary,
                            firstCardShadow,

                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            scndCardShadow,
                            scndCardPrimary,


                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            firstCardPrimary,
                            firstCardShadow,

                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            scndCardShadow,
                            scndCardPrimary,


                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                    ),
                  ],
                ),
              ),
            ],
          ),
*
* */

/*
CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
           decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    firstCardPrimary,
                    firstCardShadow,

                  ],
                ),
              ),
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
           decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    scndCardShadow,
                    scndCardPrimary,


                  ],
                ),
              ),
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      ),
    ),
  ],
)








GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    firstCardPrimary,
                    firstCardShadow,

                  ],
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: const Text("He'd have you all unravel at the"),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    scndCardShadow,
                    scndCardPrimary,


                  ],
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: const Text('Heed not the rabble'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Sound of screams but the'),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Who scream'),
              color: Colors.teal[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution is coming...'),
              color: Colors.teal[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution, they...'),
              color: Colors.teal[600],
            ),
          ],
        )
 */
