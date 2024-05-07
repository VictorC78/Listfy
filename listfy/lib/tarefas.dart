import 'package:flutter/material.dart';

class TarefasPage extends StatelessWidget {
  const TarefasPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
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
                        size: 25,
                      ),
                      SizedBox(width: 30),
                      Icon(
                        Icons.filter_list_sharp,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
