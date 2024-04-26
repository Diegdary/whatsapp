import 'package:flutter/material.dart';

class statusme extends StatelessWidget {
  statusme({super.key});
  final List<status> estados = [
    status(
      nombre: 'William',
      tiempo: 'hace 12 minutos',
      imagen: 'assets/william.jpg',
    ),
    status(
        nombre: 'No soy William',
        tiempo: 'hace 69420 minutos',
        imagen: 'assets/einstein.jpg'),
    status(
        nombre: 'Edmond Dantes',
        tiempo: 'hace 30 minutos',
        imagen: 'assets/edmond.jpg'),
    status(
        nombre: 'Alexandre Dumas',
        tiempo: 'hace 29 minutos',
        imagen: 'assets/dumas.jpg'),
    status(
        nombre: 'Bertrand RUssell',
        tiempo: 'hace 15 minutos',
        imagen: 'assets/bertrand.jpg'),
    status(
        nombre: 'Michael Jackson',
        tiempo: 'hace 45 minutos',
        imagen: 'assets/michael.jpg'),
    status(
        nombre: 'Jose Varela',
        tiempo: 'hace 13 minutos',
        imagen: 'assets/varela.jpg'),
    status(
        nombre: 'Jose Saramago',
        tiempo: 'hace 36 minutos',
        imagen: 'assets/saramago.jpg'),
    status(
        nombre: 'Julio Cortazar',
        tiempo: 'hace 43 minutos',
        imagen: 'assets/julio.jpg'),
    status(
        nombre: 'John Steinbeck',
        tiempo: 'hace 2 minutos',
        imagen: 'assets/steinbeck.jpg'),
    status(
        nombre: 'William Faulkner',
        tiempo: 'hace 35 minutos',
        imagen: 'assets/faulkner.jpg'),
    status(
        nombre: 'Samuel 800',
        tiempo: 'hace 24 minutos',
        imagen: 'assets/samuel1-01.png'),
    status(
        nombre: 'Harper Lee',
        tiempo: 'hace 19 minutos',
        imagen: 'assets/lee.jpg'),
    status(
        nombre: 'Herman Melville',
        tiempo: 'hace 12 minutos',
        imagen: 'assets/herman.jpg'),
    status(
        nombre: 'Ernesto Sabato',
        tiempo: 'hace 42 minutos',
        imagen: 'assets/sabato.jpg'),
    status(
        nombre: 'Umberto eco',
        tiempo: 'hace 55 minutos',
        imagen: 'assets/umberto.jpg'),
    //estados estados estados
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "Status",
          style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: Color(0xFFFFFFFFF),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
            color: Color(0xFF000000),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Color(0xFF000000)),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("Settings"),
              )
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print('Pepe el herizo');
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 45,
                          height: 45,
                          child: Image.asset('assets/samuel1-01.png')),
                      Icon(Icons.add_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text(
                        'My update',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // ignore: unnecessary_const
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      SizedBox(width: 32),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Text(
                          'Add an update',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: estados.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(2), // Ajusta el tamaño del borde
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green, // Color del borde
                        width: 2, // Ancho del borde
                      ),
                    ),
                    child: CircleAvatar(
                      radius: size.height * 0.03,
                      backgroundImage: AssetImage(estados[index].imagen),
                    ),
                  ),
                  title: Text(estados[index].nombre),
                  subtitle: Text(estados[index].tiempo),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class status {
  final String nombre;
  final String tiempo;
  final String imagen;

  status({
    required this.nombre,
    required this.tiempo,
    required this.imagen,
  });
}
