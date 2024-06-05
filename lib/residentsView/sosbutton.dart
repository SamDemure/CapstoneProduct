import 'package:flutter/material.dart';

class SOSButton extends StatefulWidget {
  final Duration holdDuration;
  final void Function(String) onHoldComplete;

  const SOSButton({Key? key, required this.holdDuration, required this.onHoldComplete})
      : super(key: key);

  @override
  _SOSButtonState createState() => _SOSButtonState();
}

class _SOSButtonState extends State<SOSButton> {
  bool _isHolding = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() => _isHolding = true);
        Future.delayed(widget.holdDuration, () {
          if (_isHolding) {
            widget.onHoldComplete('Random Resident Name'); // Replace with actual random name logic
          }
        });
      },
      onTapUp: (_) => setState(() => _isHolding = false),
      onTapCancel: () => setState(() => _isHolding = false),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: _isHolding ? Colors.red : Colors.green,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            'SOS',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
