import 'package:flutter/material.dart';
import 'package:investhub/app/data/model/language.dart';
import 'package:investhub/app/utils/widgets/hyperlink/hyperlink_widget.dart';

class LandingLanguageText extends StatelessWidget {
  
  const LandingLanguageText({
    Key? key,
    required this.language,
    required this.selected,
    this.onPressed,
  });

  final Language language;
  final bool selected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
              color: selected ?  Colors.black : Colors.white, // Set the border color
              width: selected ? 1.0 : 0.0, // Set the border width
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: HyperlinkWidget(
            text: language.name,
            onPressed: onPressed,
            )
        ),

    );
  }
}
