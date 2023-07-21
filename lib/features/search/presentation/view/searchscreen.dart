import 'package:booklyapp/constance.dart';
import 'package:flutter/material.dart';

import 'witgets/searchviewbody.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimyColor,
      ),
      body: const SafeArea(child: SearchViewBody()),
    );
  }
}
