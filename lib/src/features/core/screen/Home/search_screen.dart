import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('منطقة البحث'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          onChanged: (index)
          {
          },
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "اكتب للبحث",
            suffixIcon: Icon(Icons.clear),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
            )
          ),
        ),
      )
    );
  }
}
