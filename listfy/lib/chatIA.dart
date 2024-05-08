import 'package:flutter/material.dart';

class ChatIAPage extends StatelessWidget {
  const ChatIAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 0.9 * MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("GPT",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25)),
                  Text(
                    "Utilize a inteligência artificial para agilizar seu trabalho. Exemplo: Crie uma pasta com uma lista de tarefas para faxina...",
                    style: TextStyle(color: Color.fromARGB(255, 136, 136, 136)),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            Icon(
              Icons.data_usage,
              color: Colors.white,
              size: 55,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 0.85 * MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Escreva aqui...",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.subdirectory_arrow_right_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
