import 'package:flutter/material.dart';

void main() {
  runApp(AutoCompleteSearchApp());
}

class AutoCompleteSearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto-complete Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AutoCompleteSearchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AutoCompleteSearchScreen extends StatefulWidget {
  @override
  _AutoCompleteSearchScreenState createState() =>
      _AutoCompleteSearchScreenState();
}

class _AutoCompleteSearchScreenState extends State<AutoCompleteSearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = [
    'Apple',
    'Banana',
    'Cherry',
    'Durian',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Kiwi',
    'Lemon',
    'Mango',
    'Orange',
    'Pineapple',
    'Quince',
    'Raspberry',
    'Strawberry',
    'Watermelon',
  ];

  List<String> _filteredSuggestions = [];

  @override
  void initState() {
    super.initState();
    _filteredSuggestions = _suggestions;
  }

  void _onSearchTextChanged(String text) {
    setState(() {
      _filteredSuggestions = _suggestions
          .where((suggestion) =>
          suggestion.toLowerCase().contains(text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto-complete Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: _onSearchTextChanged,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredSuggestions.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_filteredSuggestions[index]),
                  onTap: () {
                    _searchController.text = _filteredSuggestions[index];
                    setState(() {
                      _filteredSuggestions = _suggestions;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
