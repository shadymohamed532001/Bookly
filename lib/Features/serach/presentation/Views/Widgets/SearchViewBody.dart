import 'package:flutter/material.dart';

class SearchViewBody
    extends StatelessWidget {
  const SearchViewBody(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Column(
        children: [
          CustomSearchTextFormFild(),
        ],
      ),
    );
  }
}

class CustomSearchTextFormFild
    extends StatelessWidget {
  const CustomSearchTextFormFild(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search Move',
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }
}

OutlineInputBorder
    buildOutlineInputBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color ?? Colors.white));
}
