import 'package:flutter/material.dart';

class GlowingPointer extends StatefulWidget {
  const GlowingPointer({required this.child, super.key});

  final Widget child;

  @override
  State<GlowingPointer> createState() => _GlowingPointerState();
}

class _GlowingPointerState extends State<GlowingPointer> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          offset = event.localPosition;
        });
      },
      onEnter: (event) {
        setState(() {
          offset = event.localPosition;
        });
      },
      child: Stack(
        children: [
          Positioned(
            left: offset.dx - 400,
            top: offset.dy - 400,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                width: 800,
                height: 800,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color.fromRGBO(29, 78, 216, 0.15),
                      Color.fromRGBO(29, 78, 216, 0),
                    ],
                  ),
                ),
              ),
            ),
          ),
          widget.child,
        ],
      ),
    );
  }
}
