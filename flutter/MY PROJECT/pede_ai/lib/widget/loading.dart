import 'package:flutter/material.dart';
import '../shared/const.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Loading();
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(themeColor),
        ),
      ),
      color: Colors.white.withOpacity(0.8),
    );
  }
}
