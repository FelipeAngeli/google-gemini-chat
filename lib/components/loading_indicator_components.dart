import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return JumpingDotsProgressIndicator(
      color: Colors.white,
      fontSize: 30.0,
    );
  }
}
