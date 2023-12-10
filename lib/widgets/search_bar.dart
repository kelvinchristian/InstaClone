import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MySearchBar extends StatelessWidget{
  Function(String) onSearch;

  MySearchBar(this.onSearch ,{Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

      return Container(
        height: 30,
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        child: TextField(
          onChanged: (value) {
            onSearch(value);
          },
          decoration: InputDecoration(
            hintText: "Search",

            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
            filled: true,
            fillColor: Colors.grey[800],
            contentPadding: const EdgeInsets.all(0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      );
    }

}
