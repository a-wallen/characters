import 'package:characters_app/app/search/search_view.dart';
import 'package:characters_app/get_it.dart';
import 'package:characters_app/search/application/bloc/search_bloc.dart';
import 'package:characters_app/search/domain/repositories/search_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The root of the application
class App extends StatelessWidget {
  /// construct the root
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<SearchBloc>(
        create: (_) => SearchBloc(
          searchRepository: getIt<SearchRepository>(),
        ),
        child: const SearchView(),
      ),
    );
  }
}
