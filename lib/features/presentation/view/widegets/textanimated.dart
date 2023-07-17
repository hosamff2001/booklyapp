
import "package:flutter/material.dart";
class textanimated extends StatelessWidget {
    const textanimated({
      super.key,
      required this.slideanimation1,
    });
  
    final Animation<Offset> slideanimation1;
  
    @override
    Widget build(BuildContext context) {
      return AnimatedBuilder(
          animation: slideanimation1,
          builder: (context, _) {
            return SlideTransition(
              position: slideanimation1,
              child: Text(
                "For Readers",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "GT"),
              ),
            );
          });
    }
  }