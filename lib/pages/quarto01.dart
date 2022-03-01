import 'package:controle_de_patrimonio/pages/garagem.dart';
import 'package:controle_de_patrimonio/pages/piscina.dart';
import 'package:controle_de_patrimonio/pages/quarto02.dart';
import 'package:flutter/material.dart';
import 'package:controle_de_patrimonio/const/constants.dart';

/*class Quarto01 extends StatefulWidget {
  const Quarto01({Key? key}) : super(key: key);

  @override
  _Quarto01State createState() => _Quarto01State();
}

class _Quarto01State extends State<Quarto01> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Text('Quarto 01'),
      ),
    );
  }
}*/

class Quarto01 extends StatefulWidget {
  const Quarto01({Key? key}) : super(key: key);

  @override
  _Quarto01State createState() => _Quarto01State();
}

class _Quarto01State extends State<Quarto01> {
  final CategoriesScroller categoriesScroller = const CategoriesScroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    // ignore: avoid_function_literals_in_foreach_calls
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["brand"],
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ ${post["price"]}",
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Image.asset(
                  "assets/img/${post["image"]}",
                  height: double.infinity,
                )
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      // ignore: sized_box_for_whitespace
      body: Container(
        height: 400, //size.height,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: size.width,
                  alignment: Alignment.topCenter,
                  height: closeTopContainer ? 0 : categoryHeight,
                  child: categoriesScroller),
            ),
            /* Expanded(
                child: ListView.builder(
                    controller: controller,
                    itemCount: itemsData.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      double scale = 1.0;
                      if (topContainer > 0.5) {
                        scale = index + 0.5 - topContainer;
                        if (scale < 0) {
                          scale = 0;
                        } else if (scale > 1) {
                          scale = 1;
                        }
                      }
                      return Opacity(
                        opacity: scale,
                        child: Transform(
                          transform: Matrix4.identity()..scale(scale, scale),
                          alignment: Alignment.bottomCenter,
                          child: Align(
                              heightFactor: 0.4,
                              alignment: Alignment.topCenter,
                              child: itemsData[index]),
                        ),
                      );
                    })),*/
          ],
        ),
      ),
    );
  }
}

class CategoriesScroller extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    // ignore: avoid_unnecessary_containers
    return Container(
      // ignore: avoid_unnecessary_containers
      child: Column(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: FittedBox(
                fit: BoxFit.fill,
                //alignment: Alignment.topCenter,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Piscina(),
                            ));

                        print("Container clicked");
                      },
                      child: Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        height: categoryHeight,
                        decoration: BoxDecoration(
                            color: Colors.orange.shade400,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              // ignore: deprecated_member_use
                              Text(
                                "Frota",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "20 Items",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Piscina(),
                            ));

                        print("Container clicked");
                      },
                      child: Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        height: categoryHeight,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade400,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                "Escritório",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "20 Items",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Garagem(),
                            ));

                        print("Container clicked");
                      },
                      child: Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        height: categoryHeight,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.shade400,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                "T.I.",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "20 Items",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Quarto02(),
                            ));

                        print("Container clicked");
                      },
                      child: Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        height: categoryHeight,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent.shade100,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                "Manutenção",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "20 Items",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListaProdView {}
