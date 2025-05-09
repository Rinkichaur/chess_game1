// lib/chess_board_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class ChessBoardScreen extends StatefulWidget {
  const ChessBoardScreen({Key? key}) : super(key: key);

  @override
  State<ChessBoardScreen> createState() => _ChessBoardScreenState();
}

class _ChessBoardScreenState extends State<ChessBoardScreen> {
  final ChessBoardController _controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chess Game"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _controller.resetBoard(),
          )
        ],
      ),
      body: Center(
        child: ChessBoard(
          controller: _controller,
          boardColor: BoardColor.brown,
          boardOrientation: PlayerColor.white,
        ),
      ),
    );
  }
}
