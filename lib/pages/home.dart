import 'package:controle_de_patrimonio/pages/cadastro_prod_view.dart';
import 'package:controle_de_patrimonio/pages/garagem.dart';
import 'package:controle_de_patrimonio/pages/piscina.dart';
import 'package:controle_de_patrimonio/pages/quarto01.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dashboard.dart';
import 'lista_prod_view.dart';
import 'quarto02.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;

  final screens = [
    const CadastroProdView(),
    const Dashboard(),
    const Quarto01(),
    ListaProdutos(),
    const Piscina(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.add, size: 30, semanticLabel: "Cadastar item"),
      const Icon(Icons.list, size: 30),
      const Icon(Icons.home, size: 30),
      const Icon(Icons.call_split, size: 30),
      const Icon(Icons.perm_identity, size: 30),
    ];

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        height: 70.0,
        items: items,
        //color: Colors.white,
        // buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        //animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) => setState(() => this.index = index),
      ),
      body: screens[index],

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      /* body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),*/

      //Posicionamento dos botões

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Botões
      /*
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = const Dashboard();
                            currentTab = 0;
                          },
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.dashboard,
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              color: currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = const Living();
                            currentTab = 1;
                          },
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.pedal_bike,
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Living',
                            style: TextStyle(
                              color: currentTab == 1 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = const Piscina();
                            currentTab = 2;
                          },
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.dashboard,
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Piscina',
                            style: TextStyle(
                              color: currentTab == 2 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
  */

      //teste

      /*  bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            height: 60,
            backgroundColor: Colors.white,
            color: Colors.amberAccent,
            items: const <Widget>[
              Icon(Icons.settings, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.add, size: 30),
              Icon(Icons.home, size: 30),
              Icon(Icons.kitchen, size: 30),
              Icon(Icons.lightbulb_outline, size: 30),
              Icon(Icons.directions_car, size: 30),
            ],
            // onTap: (currentTab) => Navigator.pushNamed(context, route),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            }),*/
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Perfil"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Quarto01()));
                }),
            ListTile(
                leading: const Icon(Icons.business),
                title: const Text("Quem Somos"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Quarto02()));
                }),
            ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Fale conosco"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Piscina()));
                }),
            ListTile(
                leading: const Icon(Icons.business_center),
                title: const Text("Contratos e Licenças"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Garagem()));
                }),
          ],
        ),
      ),
      /*      floatingActionButton: FloatingActionButton(
          alignment: Alignment.topCenter,
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.list),
          backgroundColor: Colors.amberAccent,
        ),*/
    );
  }
}
