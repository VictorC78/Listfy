import 'package:flutter/material.dart';

class ChatIAPage extends StatelessWidget {
  const ChatIAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              width: 0.9 * MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ChatGPT",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25)),
                  Text(
                      "Utilize a inteligência artificial para agilizar seu trabalho. Exemplo: Crie uma pasta com uma lista de tarefas sobre arrumar a casa...",
                      style:
                          TextStyle(color: Color.fromARGB(255, 136, 136, 136)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
