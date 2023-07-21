import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utliz/stayles.dart';

class SearchViewBodyFiledSection extends StatelessWidget {
  const SearchViewBodyFiledSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: TextField(
            autocorrect: true,
            autofocus: true,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.white)),
                hintText: "Search"),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "Search Result :",
            style: Styles.textStyle20,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
