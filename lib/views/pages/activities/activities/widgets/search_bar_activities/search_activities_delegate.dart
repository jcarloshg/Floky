import 'package:flutter/material.dart';

class SearchActivitiesDelegate extends SearchDelegate {
  SearchActivitiesDelegate()
      : super(
          keyboardType: TextInputType.name,
          searchFieldLabel: 'Busca actividades...',
        );

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.search),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // ignore: avoid_print
    print(query);
    if (query.isEmpty) return _searchEmpty(context);
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // if (query.isEmpty) return _searchEmpty(context);

    List<String> suggestions = [
      'Speak 🗣️',
      'Read 📚',
      'Listen 🎧',
      'Write 📝',
      '[Leer Batman]',
      '[Speak with Character] 😀',
      '[LISTEN FRIENDS]',
      '[SPEAK WITH CHARACTER] 😀',
      '[LEER BATMAN]',
      '[Listen Friends]',
    ];
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () => query = suggestion,
        );
      },
    );
  }

  Widget _searchEmpty(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.call_missed_outgoing,
            size: 85,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(height: 5),
          const Text("No se encontraron resultados")
        ],
      ),
    );
  }
}