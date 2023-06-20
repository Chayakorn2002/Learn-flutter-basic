import 'package:flutter/material.dart';

// https://youtu.be/jFHSkfjN96I : Sauceeee

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  List<String>? originalList = [];

  List<String> filteredList = [];

  // List<String> filteredList = [...originalList ?? []];
  void updateList(String value) {
    setState(() {
      // filteredList = originalList.where((element) => element.movie_title!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) => updateList(value),
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blue[50],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide.none,
              ),
              hintText: '...',
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) => const ListTile(
                  // ...
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
