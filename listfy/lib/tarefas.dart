import 'package:flutter/material.dart';

class TarefasPage extends StatelessWidget {
  const TarefasPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 0.9 * MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tarefas",
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.filter_list_sharp,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 46.0,
            right: 0.055 * MediaQuery.of(context).size.width,
            child: FloatingActionButton(
              onPressed: () {
                // Adicione aqui a ação quando o botão for pressionado
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                color: const Color.fromARGB(255, 0, 0, 0),
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
