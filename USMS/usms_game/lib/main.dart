import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic-Tac-Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TicTacToeScreen(),
    );
  }
}

class TicTacToeScreen extends StatefulWidget {
  const TicTacToeScreen({super.key});

  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  List<List<String>> board = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];

  String currentPlayer = 'X';
  bool gameOver = false;
  String winner = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic-Tac-Toe'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildBoard(),
            const SizedBox(height: 20.0),
            if (gameOver)
              Text(
                (winner == 'Draw') ? 'It\'s a Draw!' : 'Player $winner wins!',
                style: const TextStyle(fontSize: 20.0),
              ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: resetGame,
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoard() {
    return Column(
      children: [
        for (int row = 0; row < 3; row++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int col = 0; col < 3; col++)
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: buildCell(row, col),
                ),
            ],
          ),
      ],
    );
  }

  Widget buildCell(int row, int col) {
    return GestureDetector(
      onTap: () => makeMove(row, col),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            board[row][col],
            style: const TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }

  void checkGameOver() {
    // Check rows
    for (int row = 0; row < 3; row++) {
      if (board[row][0] != '' &&
          board[row][0] == board[row][1] &&
          board[row][0] == board[row][2]) {
        gameOver = true;
        winner = board[row][0];
        break;
      }
    }

    // Check columns
    for (int col = 0; col < 3; col++) {
      if (board[0][col] != '' &&
          board[0][col] == board[1][col] &&
          board[0][col] == board[2][col]) {
        gameOver = true;
        winner = board[0][col];
        break;
      }
    }

    // Check diagonals
    if (board[0][0] != '' &&
        board[0][0] == board[1][1] &&
        board[0][0] == board[2][2]) {
      gameOver = true;
      winner = board[0][0];
    } else if (board[0][2] != '' &&
        board[0][2] == board[1][1] &&
        board[0][2] == board[2][0]) {
      gameOver = true;
      winner = board[0][2];
    }

    // Check for a draw
    if (!gameOver && isBoardFull()) {
      gameOver = true;
      winner = 'Draw';
    }
  }

  bool isBoardFull() {
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        if (board[row][col] == '') {
          return false;
        }
      }
    }
    return true;
  }

  void makeMove(int row, int col) {
    if (board[row][col] == '' && !gameOver) {
      setState(() {
        board[row][col] = currentPlayer;
        currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
        checkGameOver();
      });
    }
  }

  void resetGame() {
    setState(() {
      board = [
        ['', '', ''],
        ['', '', ''],
        ['', '', ''],
      ];
      currentPlayer = 'X';
      gameOver = false;
      winner = '';
    });
  }
}
