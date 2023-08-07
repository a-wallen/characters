import 'package:characters_app/search/application/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_detail/list_detail.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: SearchBody(),
    );
  }
}

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        onChanged: (String? value) {
          if (value == null) return;
          context.read<SearchBloc>().add(
                SearchEvent.search(value),
              );
        },
        controller: _searchController,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: const TextStyle(color: Colors.white70),
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear, color: Colors.white70),
            onPressed: () {
              _searchController.clear();
              context.read<SearchBloc>().add(
                    const SearchEvent.initialize(),
                  );
            },
          ),
        ),
      ),
      backgroundColor:
          Theme.of(context).colorScheme.primary, // Change this to customize the background color of the AppBar
    );
  }
}

class SearchBody extends StatelessWidget {
  /// construct the view
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.when(
            initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            success: (results) => ListDetailView(
                  children: results
                      .map(
                        (result) => ListDetailWidget(
                          metadata: ListTile(
                            title: Text(result.title),
                          ),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                result.image,
                                height: 40,
                                width: 40,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.asset(
                                    'assets/images/blank.jpg',
                                    height: 40,
                                    width: 40,
                                  );
                                },
                              ),
                              Text(
                                result.title,
                              ),
                              Text(
                                result.description,
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
            failure: (message) => Center(
                  child: Text(
                    message,
                  ),
                ));
      },
    );
  }
}
