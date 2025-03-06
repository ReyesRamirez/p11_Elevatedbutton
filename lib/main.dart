import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reyes Alfonso Ramirez Martinez Mat:1289',
              style: TextStyle(fontSize: 17)), // Título de la AppBar
          backgroundColor: Colors.blue, // Color de fondo de la AppBar
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Cuatro botones con iconos y texto
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconTextButton(
                        color: Colors.red, icon: Icons.star, text: 'Botón 1'),
                    IconTextButton(
                        color: Colors.green,
                        icon: Icons.favorite,
                        text: 'Botón 2'),
                    IconTextButton(
                        color: Colors.orange,
                        icon: Icons.thumb_up,
                        text: 'Botón 3'),
                    IconTextButton(
                        color: Colors.purple,
                        icon: Icons.thumb_down,
                        text: 'Botón 4'),
                  ],
                ),
              ),
              // Línea separadora debajo de los primeros 4 botones
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(
                  color: Colors.black, // Color de la línea
                  thickness: 10, // Grosor de la línea
                  indent: 20, // Espaciado inicial
                  endIndent: 20, // Espaciado final
                ),
              ),
              // Cuatro botones con texto
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(color: Colors.yellow, text: 'Botón 5'),
                    TextButton(color: Colors.teal, text: 'Botón 6'),
                    TextButton(color: Colors.pink, text: 'Botón 7'),
                    TextButton(color: Colors.indigo, text: 'Botón 8'),
                  ],
                ),
              ),
              // Línea separadora debajo de los siguientes 4 botones
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(
                  color: Colors.black, // Color de la línea
                  thickness: 10, // Grosor de la línea
                  indent: 20, // Espaciado inicial
                  endIndent: 20, // Espaciado final
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  IconTextButton({required this.color, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Color de fondo del botón
        padding: EdgeInsets.symmetric(
            horizontal: 12, vertical: 16), // Espaciado interno
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              0), // Bordes rectangulares con esquinas redondeadas
        ),
        minimumSize: Size(80, 80), // Tamaño mínimo del botón
      ),
      onPressed: () {
        // Acción al presionar el botón
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, color: Colors.white, size: 30), // Icono
          SizedBox(height: 8), // Espacio entre el icono y el texto
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 14), // Texto debajo del icono
          ),
        ],
      ),
    );
  }
}

class TextButton extends StatelessWidget {
  final Color color;
  final String text;

  TextButton({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Color de fondo del botón
        padding: EdgeInsets.symmetric(
            horizontal: 16, vertical: 12), // Espaciado interno
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              0), // Bordes rectangulares con esquinas redondeadas
        ),
        minimumSize: Size(80, 60), // Tamaño mínimo del botón
      ),
      onPressed: () {
        // Acción al presionar el botón
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 14), // Texto del botón
      ),
    );
  }
}
