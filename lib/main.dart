// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp,
              colors: [
                Color(0xFFD1E8FF),
                Color(0xFFDAEDFE),
                Color(0xFFE3F2FD),
                Color(0xFFE9F4FE),
                Color(0xFFEFF7FF),
                Color(0xFFF3F8FC),
                Color(0xFFF8F9FA),
                Color(0xFFFBFCFC),
                Color(0xFFFFFFFF),
                Color(0xFFFBFCFC),
                Color(0xFFF8F9FA),
                Color(0xFFF3F8FC),
                Color(0xFFEFF7FF),
                Color(0xFFE9F4FE),
                Color(0xFFE3F2FD),
                Color(0xFFDAEDFE),
                Color(0xFFD1E8FF),
              ],
              stops: [
                0.000,
                0.062,
                0.125,
                0.188,
                0.250,
                0.312,
                0.375,
                0.438,
                0.500,
                0.562,
                0.625,
                0.688,
                0.750,
                0.812,
                0.875,
                0.938,
                1.000,
              ],
            ),
          ),
          child: Boneco(),
        ),
      ),
    );
  }
}

class Boneco extends StatefulWidget {
  const Boneco({super.key});

  @override
  State<Boneco> createState() => _BonecoState();
}

class _BonecoState extends State<Boneco> {
  @override
  Widget build(BuildContext context) {
    return
  Stack(
        children: [
          Center(child: Image.asset("assets/images/Boneco.png")),
          Positioned(
            //Essa é a da cabeça
            top: 150,
            left: 140,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => const Tela2()),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                width: 110,
                height: 110,
              ),
            ),
          ),
          Positioned(
            //Coração/barriga/partes íntimas, lembra de colocar uma tela a mais pra selecionar pra onde quer ir, e com isso criar 3 telas nova
            top: 266,
            left: 140,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => const Tela3()),
                );
              },
              child: SizedBox( width: 104, height: 210),
            ),
          ),
          Positioned(
            //braço esquerdo
            top: 280,
            left: 60,
            child: Transform.rotate(
                angle: 0.75,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => const Tela4()),
                );
              },
              
                child: SizedBox(
                  width: 50,
                  height: 165,
                ),
              ),
            ),
          ),
          Positioned(
            //braço direito
            top: 280,
            right: 60,
            child: Transform.rotate(
                angle: -0.75,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => const Tela4()),
                );
              },
              
                child: SizedBox(
                  width: 50,
                  height: 165,
                ),
              ),
            ),
          ),
          Positioned(//perna esquerda/ pé esquerdo, fazer tela de separação
            top: 480,
            left: 85,
            child: Transform.rotate(
                angle: 0.33,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => const Tela5()),
                );
              },
              
                child: SizedBox( width: 70, height: 210),
              ),
            ),
          ),
           Positioned(//perna esquerda/ pé esquerdo, fazer tela de separação
            top: 480,
            right: 85,
            child: Transform.rotate(
                angle: -0.33,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => const Tela5()),
                );
              },
              
                child: SizedBox( width: 70, height: 210),
              ),
            ),
          ),
          Positioned(top: 50, left: 55, child: Text("Onde está sentindo?", style: TextStyle(fontSize: 30, color: Color(0xFF607D8B)),))
        ],
      );
  }
}

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  bool _tocando = false;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp,
              colors: [
                Color(0xFFD1E8FF),
                Color(0xFFDAEDFE),
                Color(0xFFE3F2FD),
                Color(0xFFE9F4FE),
                Color(0xFFEFF7FF),
                Color(0xFFF3F8FC),
                Color(0xFFF8F9FA),
                Color(0xFFFBFCFC),
                Color(0xFFFFFFFF),
                Color(0xFFFBFCFC),
                Color(0xFFF8F9FA),
                Color(0xFFF3F8FC),
                Color(0xFFEFF7FF),
                Color(0xFFE9F4FE),
                Color(0xFFE3F2FD),
                Color(0xFFDAEDFE),
                Color(0xFFD1E8FF),
              ],
              stops: [
                0.000,
                0.062,
                0.125,
                0.188,
                0.250,
                0.312,
                0.375,
                0.438,
                0.500,
                0.562,
                0.625,
                0.688,
                0.750,
                0.812,
                0.875,
                0.938,
                1.000,
              ],
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 40),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                right: 70,
                child: Text(
                  "O que está sentindo?",
                  style: TextStyle(fontSize: 25, color: Color(0xFF607D8B)),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/images/retornar.png",
                    width: 50,
                    height: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  bool _tocando = false;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp,
              colors: [
                Color(0xFFD1E8FF),
                Color(0xFFDAEDFE),
                Color(0xFFE3F2FD),
                Color(0xFFE9F4FE),
                Color(0xFFEFF7FF),
                Color(0xFFF3F8FC),
                Color(0xFFF8F9FA),
                Color(0xFFFBFCFC),
                Color(0xFFFFFFFF),
                Color(0xFFFBFCFC),
                Color(0xFFF8F9FA),
                Color(0xFFF3F8FC),
                Color(0xFFEFF7FF),
                Color(0xFFE9F4FE),
                Color(0xFFE3F2FD),
                Color(0xFFDAEDFE),
                Color(0xFFD1E8FF),
              ],
              stops: [
                0.000,
                0.062,
                0.125,
                0.188,
                0.250,
                0.312,
                0.375,
                0.438,
                0.500,
                0.562,
                0.625,
                0.688,
                0.750,
                0.812,
                0.875,
                0.938,
                1.000,
              ],
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 40),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                right: 70,
                child: Text(
                  "O que está sentindo?",
                  style: TextStyle(fontSize: 25, color: Color(0xFF607D8B)),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/images/retornar.png",
                    width: 50,
                    height: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tela4 extends StatefulWidget {
  const Tela4({super.key});

  @override
  State<Tela4> createState() => _Tela4State();
}

class _Tela4State extends State<Tela4> {
  bool _tocando = false;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp,
              colors: [
                Color(0xFFD1E8FF),
                Color(0xFFDAEDFE),
                Color(0xFFE3F2FD),
                Color(0xFFE9F4FE),
                Color(0xFFEFF7FF),
                Color(0xFFF3F8FC),
                Color(0xFFF8F9FA),
                Color(0xFFFBFCFC),
                Color(0xFFFFFFFF),
                Color(0xFFFBFCFC),
                Color(0xFFF8F9FA),
                Color(0xFFF3F8FC),
                Color(0xFFEFF7FF),
                Color(0xFFE9F4FE),
                Color(0xFFE3F2FD),
                Color(0xFFDAEDFE),
                Color(0xFFD1E8FF),
              ],
              stops: [
                0.000,
                0.062,
                0.125,
                0.188,
                0.250,
                0.312,
                0.375,
                0.438,
                0.500,
                0.562,
                0.625,
                0.688,
                0.750,
                0.812,
                0.875,
                0.938,
                1.000,
              ],
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 40),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                right: 70,
                child: Text(
                  "O que está sentindo?",
                  style: TextStyle(fontSize: 25, color: Color(0xFF607D8B)),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/images/retornar.png",
                    width: 50,
                    height: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tela5 extends StatefulWidget {
  const Tela5({super.key});

  @override
  State<Tela5> createState() => _Tela5State();
}

class _Tela5State extends State<Tela5> {
  bool _tocando = false;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp,
              colors: [
                Color(0xFFD1E8FF),
                Color(0xFFDAEDFE),
                Color(0xFFE3F2FD),
                Color(0xFFE9F4FE),
                Color(0xFFEFF7FF),
                Color(0xFFF3F8FC),
                Color(0xFFF8F9FA),
                Color(0xFFFBFCFC),
                Color(0xFFFFFFFF),
                Color(0xFFFBFCFC),
                Color(0xFFF8F9FA),
                Color(0xFFF3F8FC),
                Color(0xFFEFF7FF),
                Color(0xFFE9F4FE),
                Color(0xFFE3F2FD),
                Color(0xFFDAEDFE),
                Color(0xFFD1E8FF),
              ],
              stops: [
                0.000,
                0.062,
                0.125,
                0.188,
                0.250,
                0.312,
                0.375,
                0.438,
                0.500,
                0.562,
                0.625,
                0.688,
                0.750,
                0.812,
                0.875,
                0.938,
                1.000,
              ],
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 40),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: _tocando
                                ? null
                                : () async {
                                    setState(() => _tocando = true);
                                    await _audioPlayer.play(
                                      AssetSource("images/Audioteste.mp3"),
                                    );
                                    setState(() => _tocando = false);
                                  },
                            child: Image.asset(
                              "assets/images/botao.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Palavra",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                right: 70,
                child: Text(
                  "O que está sentindo?",
                  style: TextStyle(fontSize: 25, color: Color(0xFF607D8B)),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/images/retornar.png",
                    width: 50,
                    height: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
