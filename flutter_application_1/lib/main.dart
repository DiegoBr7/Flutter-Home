import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoadorPage(),
    );
  }
}

class DoadorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Primeira linha com logo e saudação
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo e nome da organização
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.0), // Ajustado o padding
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            './logo.png', // Caminho da imagem do logo
                            width: 80, // Largura da imagem
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Saudação e imagem do doador
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.0, right: 30.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 30.0, top: 50.0),
                          child: Text(
                            'Olá, doador',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF06C657)),
                          ),
                        ),
                        SizedBox(width: 12),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                              './doador.jpeg'), // Caminho da imagem do doador
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Carrossel de imagens
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Container(
                  height: 120,  // Ajusta a altura do container
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal, // Carrossel horizontal
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: 80,  // Tamanho do container
                          width: 80,   // Tamanho do container
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,  // Forma circular
                            color: Colors.pink,     // Cor de fundo do CircleAvatar
                            border: Border.all(     // Define a borda
                              color: Colors.white,   // Cor da borda
                              width: 4,              // Espessura da borda
                            ),
                          ),
                          child: CircleAvatar(
                            radius:0.1,  // Raio do círculo (ajustar conforme necessário)
                            backgroundImage: AssetImage('./doador.jpeg'),  // Imagem de fundo do avatar
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ], // Fecha a lista de widgets dentro do Column
          ),
        ),
      ),
    );
  }
}
