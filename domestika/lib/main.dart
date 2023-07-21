import 'package:flutter/material.dart';

void main() {
  runApp(VigaEditorApp());
}

class VigaEditorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Editor Gráfico de Viga'),
        ),
        body: VigaEditor(),
      ),
    );
  }
}

class VigaEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: Size(300, 100), // Tamaño del lienzo
        painter: VigaPainter(),
      ),
    );
  }
}

class VigaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final double width = size.width;
    final double height = size.height;

    // Dibujar la viga como una línea horizontal
    canvas.drawLine(Offset(0, height / 2), Offset(width, height / 2), paint);

    // Dibujar la carga concentrada en el centro
    canvas.drawCircle(Offset(width / 2, height / 4), 10, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
