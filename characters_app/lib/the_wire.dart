import 'package:characters_app/get_it.dart';
import 'package:characters_app/main_common.dart' as main_common;
import 'package:characters_app/search/data/repositories/the_wire_search_repository.dart';
import 'package:characters_app/search/domain/repositories/search_repository.dart';

void main() {
  getIt.registerSingleton<SearchRepository>(TheWireSearchRepository());
  main_common.main();
}
