import 'package:flutter/material.dart';
import 'package:listfy/chatIA.dart';
import 'package:listfy/notas.dart';
import 'package:listfy/pastas.dart';
import 'package:listfy/tarefas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listfy',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    NotasPage(),
    PastasPage(),
    TarefasPage(),
    ChatIAPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.dark_mode_rounded,
            size: 20,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.watch_later_sharp,
            size: 20,
          ),
          SizedBox(width: 30),
          Icon(
            Icons.settings,
            size: 20,
          ),
          SizedBox(
            width: 0.055 * MediaQuery.of(context).size.width,
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.note_add_rounded),
            ),
            label: 'Notas',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.folder),
            ),
            label: 'Pastas',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.assignment),
            ),
            label: 'Tarefas',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.data_usage),
            ),
            label: 'GPT',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        selectedFontSize: 14.0, // Tamanho da fonte para itens selecionados
        unselectedFontSize:
            12.0, // Tamanho da fonte para itens não selecionados
      ),
    );
  }
}
